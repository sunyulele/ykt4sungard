/**
 * Copyright (c) 2000-2005 Liferay, LLC. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

package com.liferay.portlet.mail.action;

import com.liferay.mail.service.spring.MailServiceUtil;
import com.liferay.portal.struts.PortletAction;
import com.liferay.portal.util.Constants;
import com.liferay.portlet.mail.util.MailUtil;
import com.liferay.util.ListUtil;
import com.liferay.util.ParamUtil;
import com.liferay.util.StringComparator;
import com.liferay.util.Validator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletConfig;
import javax.portlet.PortletPreferences;

import javax.servlet.jsp.PageContext;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/**
 * <a href="BlockSenderAction.java.html"><b><i>View Source</i></b></a>
 *
 * @author  Brian Wing Shun Chan
 * @version $Revision: 1.4 $
 *
 */
public class BlockSenderAction extends PortletAction {

	public void processAction(
			ActionMapping mapping, ActionForm form, PortletConfig config,
			ActionRequest req, ActionResponse res)
		throws Exception {

		try {
			String folderName = req.getParameter("folder_name");
			Folder folder = MailUtil.getFolder(req, folderName);

			List blocked = new ArrayList();

			String[] msgNumbers = req.getParameterValues("msg_numbers");

			if (msgNumbers != null) {
				for (int i = 0; i < msgNumbers.length; i++) {
					try {
						int msgId = Integer.parseInt(msgNumbers[i]);
						Message msg = folder.getMessage(msgId);
						InternetAddress[] from =
							(InternetAddress[])msg.getFrom();
						String emailAddress = from[0].getAddress();

						if (Validator.isEmailAddress(emailAddress)) {
							blocked.add(emailAddress);
						}
					}
					catch (Exception exc) {
					}
				}
			}

			if (!blocked.isEmpty()) {
				PortletPreferences prefs = req.getPreferences();

				List list = ListUtil.fromArray(
					prefs.getValues("blocked", new String[0]));

				list.addAll(blocked);

				ListUtil.distinct(list);

				Collections.sort(list, new StringComparator());

				prefs.setValues(
					"blocked", (String[])list.toArray(new String[0]));

				MailServiceUtil.updateBlocked(req.getRemoteUser(), list);

				prefs.store();
			}

			// Send redirect

			res.sendRedirect(ParamUtil.getString(req, "redirect"));
		}
		catch (Exception e) {
			req.setAttribute(PageContext.EXCEPTION, e);

			setForward(req, Constants.COMMON_ERROR);
		}
	}

}