#ifndef sysmjnl_h
	#define sysmjnl_h
/*---------------------------------------------------------------------------*/
/*  プロジェクト : Atlanta
/*  ファイル名   : SYSMJNL.H                                                 */
/*  モジュール   :                                                           */
/*               :                                                           */
/*  作成者       : 村田                                                      */
/*  日  付       : 1996/12/02                                                */
/*  概  要       : マルチ回線仕様ジャーナル定義                              */
/*               :                                                           */
/*  修正履歴     :                                                           */
/*---------------------------------------------------------------------------*/


/************************************************************************
 * ジャーナルセットリクエストキューのステータス
 * unsigned char SYS_JournalRequest[SYS_OPTION_BOARD_MAX]
 * 1996/12/02 Y.Murata
 ************************************************************************/
#define SYS_JOURNAL_REQ_NOTHING		0
#define SYS_JOURNAL_REQ				1
#define SYS_JOURNAL_REQ_WORKING		2




#endif	/* end of File */
