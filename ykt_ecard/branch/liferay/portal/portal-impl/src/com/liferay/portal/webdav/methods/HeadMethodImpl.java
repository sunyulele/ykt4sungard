/**
 * Copyright (c) 2000-2008 Liferay, Inc. All rights reserved.
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

package com.liferay.portal.webdav.methods;

import com.liferay.portal.webdav.Resource;
import com.liferay.portal.webdav.WebDAVException;
import com.liferay.portal.webdav.WebDAVRequest;
import com.liferay.portal.webdav.WebDAVStorage;

import javax.servlet.http.HttpServletResponse;

/**
 * <a href="HeadMethodImpl.java.html"><b><i>View Source</i></b></a>
 *
 * @author Brian Wing Shun Chan
 * @author Alexander Chow
 *
 */
public class HeadMethodImpl implements Method {

	public int process(WebDAVRequest webDavReq) throws WebDAVException {
		try {
			WebDAVStorage storage = webDavReq.getWebDAVStorage();
			HttpServletResponse res = webDavReq.getHttpServletResponse();

			Resource resource = storage.getResource(webDavReq);

			int status = HttpServletResponse.SC_NOT_FOUND;

			if (resource == null) {
				res.sendError(
					HttpServletResponse.SC_NOT_FOUND, webDavReq.getPath());
			}
			else {
				if (!resource.isCollection()) {
					res.setContentLength(resource.getSize());
				}

				status = HttpServletResponse.SC_OK;
			}

			return status;
		}
		catch (Exception e) {
			throw new WebDAVException(e);
		}
	}

}