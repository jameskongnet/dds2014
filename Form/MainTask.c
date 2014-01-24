/*
*********************************************************************************************************
*                                                礐/GUI
*                        Universal graphic software for embedded applications
*
*                       (c) Copyright 2002, Micrium Inc., Weston, FL
*                       (c) Copyright 2000, SEGGER Microcontroller Systeme GmbH          
*
*              礐/GUI is protected by international copyright laws. Knowledge of the
*              source code may not be used to write a similar product. This file may
*              only be used in accordance with a license and should not be redistributed 
*              in any way. We appreciate your understanding and fairness.
*
* File        : MainTask.c
* Purpose     : Application program in windows simulator
*********************************************************************************************************
*/


#include "GUI.h"
#include "WM.h"
#include "BUTTON.h"
#include "WIDGET.h"
#include "MENU.h"
#include "DIALOG.h"
#include "MULTIPAGE.h"
#include <string.h>
#include <time.h>
#include <stdio.h>
#include <locale.h>

#define ID_MENU_PROJECT_NEW       (GUI_ID_USER +  0)
#define ID_MENU_PROJECT_LOAD      (GUI_ID_USER +  1)
#define ID_MENU_PROJECT_SAVE      (GUI_ID_USER +  2)
#define ID_MENU_PROJECT_EXIT      (GUI_ID_USER +  3)
#define ID_MENU_PROJECT_ABOUT     (GUI_ID_USER +  4)

#define ID_MENU_SETTINGS_SYSTEM     (GUI_ID_USER +  5)
#define ID_MENU_SETTINGS_DISPLAY    (GUI_ID_USER +  6)

#define ID_MENU_TOOLS_FILEEXP     (GUI_ID_USER +  7)
#define ID_MENU_TOOLS_USBCONN     (GUI_ID_USER +  8)

#define ID_MENU_HELP_HELP         (GUI_ID_USER +  9)
#define ID_MENU_HELP_ABOUT        (GUI_ID_USER +  10)

extern const GUI_BITMAP bmMicriumLogo;
extern const GUI_BITMAP bmMicriumLogo_1bpp;
extern const GUI_BITMAP bmbackground2;
extern const GUI_BITMAP bmcredit;

static int      _NotOpen;

static WM_HWIN  _hContextMenu;
static WM_HWIN  _hBackground;

static BUTTON_Handle hBTN1,hBTN2,hBTN3,hBTN4;
static void _hFrameMsg(WM_MESSAGE* pMsg);
static void _backgroundMsg(WM_MESSAGE* pMsg);
static void _DispLogo(void);


static char _sF1_SubFunctionName1[255];
static char _sF1_SubFunctionName2[255];
static char _sF1_SubFunctionName3[255];
static char _sF1_SubFunctionName4[255];

static char _sF2_SubFunctionName1[255];
static char _sF2_SubFunctionName2[255];
static char _sF2_SubFunctionName3[255];
static char _sF2_SubFunctionName4[255];

static char _sF3_SubFunctionName1[255];
static char _sF3_SubFunctionName2[255];
static char _sF3_SubFunctionName3[255];
static char _sF3_SubFunctionName4[255];

static char _sF4_SubFunctionName1[255];
static char _sF4_SubFunctionName2[255];
static char _sF4_SubFunctionName3[255];
static char _sF4_SubFunctionName4[255];

static int _sF1_SubFunctionEnable=0;
static int _sF2_SubFunctionEnable=0;
static int _sF3_SubFunctionEnable=0;
static int _sF4_SubFunctionEnable=0;

static int _sF1_SubFunctionNum=4;
static int _sF2_SubFunctionNum=4;
static int _sF3_SubFunctionNum=4;
static int _sF4_SubFunctionNum=4;


/*
  *******************************************************************
  *
  *              main()
  *
  *******************************************************************
*/
static void _LuaguageSelector(void){
	
}
static void _cbSystemSettings(WM_MESSAGE* pMsg) {
  WM_HWIN hWin = pMsg->hWin;
  switch (pMsg->MsgId) {
  case WM_NOTIFY_PARENT:
    if (pMsg->Data.v == WM_NOTIFICATION_RELEASED) {
      WM_HWIN hItem = pMsg->hWinSrc;
      switch (WM_GetId(hItem)) {
      case GUI_ID_OK:
        GUI_EndDialog(hWin, 1);
        break;
      case GUI_ID_CHECK0:
        //_ShowPossibleMoves = CHECKBOX_GetState(hItem);
        //_InvalidateBoard();
        break;
      }
    }
    break;
  default:
    WM_DefaultProc(pMsg);
  }
}
static void _ShowSystemSettings(void) {
  WM_HWIN hFrame, hClient, hItem;
  /* Create framewin */
  hFrame = FRAMEWIN_CreateEx(70, 75, 180, 90, WM_HBKWIN, WM_CF_SHOW, FRAMEWIN_CF_MOVEABLE, 0, "系统设置", &_cbSystemSettings);
  FRAMEWIN_SetClientColor   (hFrame, GUI_WHITE);
  FRAMEWIN_SetFont          (hFrame, &GUI_FontHZ_song_13);
  FRAMEWIN_SetTextAlign     (hFrame, GUI_TA_HCENTER);
  /* Create dialog items */
  hClient = WM_GetClientWindow(hFrame);
  /* Create button */
  hItem = BUTTON_CreateEx(59, 46, 55, 18, hClient, WM_CF_SHOW, 0, GUI_ID_OK);
  BUTTON_SetText         (hItem, "确定");
  /* Create checkbox */
  hItem = CHECKBOX_CreateEx(10, 10, 140, 0, hClient, WM_CF_SHOW, 0, GUI_ID_CHECK0);
  CHECKBOX_SetText         (hItem, "Show possible moves");
  CHECKBOX_SetBkColor      (hItem, GUI_INVALID_COLOR);
  //CHECKBOX_SetState        (hItem, _ShowPossibleMoves);
  /* Exec modal dialog */
  WM_SetFocus(hFrame);
  WM_MakeModal(hFrame);
  GUI_ExecCreatedDialog(hFrame);
  WM_SetFocus(_hBackground);
}
static void _cbNewProject(WM_MESSAGE* pMsg) {
  WM_HWIN hWin = pMsg->hWin;
  switch (pMsg->MsgId) {
  case WM_NOTIFY_PARENT:
    if (pMsg->Data.v == WM_NOTIFICATION_RELEASED) {
      WM_HWIN hItem = pMsg->hWinSrc;
      switch (WM_GetId(hItem)) {
      case GUI_ID_OK:
        GUI_EndDialog(hWin, 1);
        break;
      case GUI_ID_CHECK0:
        //_ShowPossibleMoves = CHECKBOX_GetState(hItem);
        //_InvalidateBoard();
        break;
      }
    }
    break;
  default:
    WM_DefaultProc(pMsg);
  }
}
static void _ShowNewProject(void) {
  WM_HWIN hFrame, hClient,hClientmp,hItem;
  /* Create framewin */
  hFrame = FRAMEWIN_CreateEx(48,22, 224, 196, WM_HBKWIN, WM_CF_SHOW, FRAMEWIN_CF_MOVEABLE, 0, "新建项目", &_cbNewProject);
  FRAMEWIN_SetClientColor   (hFrame, 0XAAAAAA);
  FRAMEWIN_SetFont          (hFrame, &GUI_FontHZ_song_13);
  FRAMEWIN_SetTextAlign     (hFrame, GUI_TA_HCENTER);
  FRAMEWIN_AddCloseButton	(hFrame,FRAMEWIN_BUTTON_RIGHT,0);
  /* Create dialog items */
  hClient = WM_GetClientWindow(hFrame);
  /* Create checkbox */
  TEXT_SetDefaultFont(&GUI_FontHZ_song_13);
  hItem = MULTIPAGE_CreateEx(0,0,204,148,hClient,WM_CF_SHOW,0,0);
  //hItem = WM_Create
  hClientmp = WM_GetClientWindow(hItem);
  hItem = TEXT_CreateEx(10,14,0,0,hClientmp,WM_CF_SHOW,0,0,"输出模式选择");
  hItem = TEXT_CreateEx(10,42,0,0,hClientmp,WM_CF_SHOW,0,0,"高级模式设置");
  hItem = TEXT_CreateEx(10,71,0,0,hClientmp,WM_CF_SHOW,0,0,"频率");
  hItem = TEXT_CreateEx(10,71,0,0,hClientmp,WM_CF_SHOW,0,0,"起始频率");
  hItem = TEXT_CreateEx(10,100,0,0,hClientmp,WM_CF_SHOW,0,0,"终止频率");
  /* Create button */
  hItem = BUTTON_CreateEx(48, 155, 55, 18, hClient, WM_CF_SHOW, 0, GUI_ID_OK);
  BUTTON_SetText         (hItem, "确定");

  WM_SetFocus(hFrame);
  WM_MakeModal(hFrame);
  GUI_ExecCreatedDialog(hFrame);
  WM_SetFocus(_hBackground);
}
static void _OnMenu(WM_MESSAGE* pMsg) {
  MENU_MSG_DATA* pData = (MENU_MSG_DATA*)pMsg->Data.p;
  MENU_Handle    hMenu = pMsg->hWinSrc;
  switch (pData->MsgType) {
  case MENU_ON_INITMENU:
    if (_NotOpen) {
      MENU_DisableItem(hMenu, ID_MENU_PROJECT_SAVE);
    } else {
      MENU_EnableItem(hMenu, ID_MENU_PROJECT_SAVE);
    }
    break;
  case MENU_ON_ITEMSELECT:
    switch (pData->ItemId) {
    case ID_MENU_PROJECT_NEW:
		_ShowNewProject();
      break;
    case ID_MENU_PROJECT_LOAD:
 
      break;
    case ID_MENU_PROJECT_SAVE:
      
      break;
    case ID_MENU_PROJECT_EXIT:
      WM_DeleteWindow(_hBackground);
      break;
    case ID_MENU_SETTINGS_SYSTEM:
      _ShowSystemSettings();
      break;
	case ID_MENU_SETTINGS_DISPLAY:
      //_ShowDisplaySettings();
      break;
    case ID_MENU_HELP_HELP:
      //_ShowHelpBox();
      break;
    case ID_MENU_HELP_ABOUT:
     // _ShowAboutBox();
     break;
    //case ID_MENU_TEST:
    //  WM_ReleaseCapture();
    //  WM_DetachWindow(_hContextMenu);
    //  break;
    }
    break;
  default:
    WM_DefaultProc(pMsg);
  }
}

static void _UpdateFunctionBar(const char * _sFunctionName1,const char * _sFunctionName2,const char * _sFunctionName3,const char * _sFunctionName4){
	BUTTON_SetText(hBTN1,_sFunctionName1);
	BUTTON_SetText(hBTN2,_sFunctionName2);
	BUTTON_SetText(hBTN3,_sFunctionName3);
	BUTTON_SetText(hBTN4,_sFunctionName4);
}


static void _AddMenuItem(MENU_Handle hMenu, MENU_Handle hSubmenu, const char* pText, U16 Id, U16 Flags) {
  MENU_ITEM_DATA Item;
  Item.pText    = pText;
  Item.hSubmenu = hSubmenu;
  Item.Flags    = Flags;
  Item.Id       = Id;
  MENU_AddItem(hMenu, &Item);
}
void _CreateMenu(WM_HWIN hWin){
  MENU_Handle hM,hFILEM,hCONFIGM,hWAVEM,hHELPM;
  MENU_Handle hFUN1M,hFUN2M,hFUN3M,hFUN4M;
  MENU_SetDefaultFont(&GUI_FontHZ_song_13);
  
  MENU_SetDefaultBkColor(MENU_CI_ENABLED,0XAAAAAA);
  MENU_SetDefaultBkColor(MENU_CI_ACTIVE_SUBMENU,GUI_BLACK);
  MENU_SetDefaultBkColor(MENU_CI_SELECTED,GUI_BLACK);
  MENU_SetDefaultTextColor(MENU_CI_SELECTED,GUI_WHITE);
  MENU_SetDefaultBorderSize(MENU_BI_LEFT,28);
  MENU_SetDefaultBorderSize(MENU_BI_RIGHT,28);
  hFILEM=MENU_CreateEx(0,0,0,0,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
  _AddMenuItem(hFILEM,0,"新建方案",ID_MENU_PROJECT_NEW,0);
  _AddMenuItem(hFILEM,0,"读取方案",ID_MENU_PROJECT_LOAD,0);
  _AddMenuItem(hFILEM,0,"保存方案",ID_MENU_PROJECT_SAVE,0);
  _AddMenuItem(hFILEM,0,0,0,MENU_IF_SEPARATOR);
  _AddMenuItem(hFILEM,0,"退出",ID_MENU_PROJECT_EXIT,0);
  
  hCONFIGM=MENU_CreateEx(0,0,0,0,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
   MENU_SetDefaultFont(&GUI_FontHZ_song_13);
  _AddMenuItem(hCONFIGM,0,"参数配置",ID_MENU_SETTINGS_SYSTEM,0);
  _AddMenuItem(hCONFIGM,0,"显示设置",ID_MENU_SETTINGS_DISPLAY,0);
   
  hWAVEM=MENU_CreateEx(0,0,0,0,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
  _AddMenuItem(hWAVEM,0,"文件管理器",ID_MENU_TOOLS_FILEEXP,0);
  _AddMenuItem(hWAVEM,0,"USB连接",ID_MENU_TOOLS_USBCONN,0);

  hHELPM=MENU_CreateEx(0,0,0,0,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
  _AddMenuItem(hHELPM,0,"帮助",ID_MENU_HELP_HELP,0);
  _AddMenuItem(hHELPM,0,0,0,MENU_IF_SEPARATOR);
  _AddMenuItem(hHELPM,0,"关于",ID_MENU_HELP_ABOUT,0);

  hM=MENU_CreateEx(0,0,320,20,0,WM_CF_SHOW,MENU_CF_HORIZONTAL,10);
  _AddMenuItem(hM, hFILEM,    "文件",    10, 0);
  _AddMenuItem(hM, hCONFIGM,  "设置",    20, 0);
  _AddMenuItem(hM, hWAVEM,    "工具",    30, 0);
  _AddMenuItem(hM, hHELPM,    "帮助",    40, 0);

  hFUN1M=MENU_CreateEx(0,100,0,0,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
  _AddMenuItem(hFUN1M,0,"子功能1",11,0);
  _AddMenuItem(hFUN1M,0,"子功能2",12,0);
  _AddMenuItem(hFUN1M,0,"子功能3",13,0);
  _AddMenuItem(hFUN1M,0,"子功能4",14,0);
  _AddMenuItem(hFUN1M,0,"子功能5",15,0);

  hFUN2M=MENU_CreateEx(0,100,0,0,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
  _AddMenuItem(hFUN2M,0,"子功能1",21,0);
  _AddMenuItem(hFUN2M,0,"子功能2",22,0);
  _AddMenuItem(hFUN2M,0,"子功能3",23,0);
  _AddMenuItem(hFUN2M,0,"子功能4",24,0);
  _AddMenuItem(hFUN2M,0,"子功能5",25,0);

  hFUN3M=MENU_CreateEx(0,100,0,0,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
  _AddMenuItem(hFUN3M,0,"子功能1",31,0);
  _AddMenuItem(hFUN3M,0,"子功能2",32,0);
  _AddMenuItem(hFUN3M,0,"子功能3",33,0);
  _AddMenuItem(hFUN3M,0,"子功能4",34,0);
  _AddMenuItem(hFUN3M,0,"子功能5",35,0);

  hFUN4M=MENU_CreateEx(0,100,0,50,WM_UNATTACHED,0,MENU_CF_VERTICAL,10);
  _AddMenuItem(hFUN4M,0,"子功能1",41,0);
  _AddMenuItem(hFUN4M,0,"子功能2",42,0);
  _AddMenuItem(hFUN4M,0,"子功能3",43,0);
  _AddMenuItem(hFUN4M,0,"子功能4",44,0);
  _AddMenuItem(hFUN4M,0,"子功能5",45,0);
  MENU_SetDefaultBorderSize(MENU_BI_LEFT,24);
  MENU_SetDefaultBorderSize(MENU_BI_RIGHT,24);
  BUTTON_SetDefaultFont(&GUI_FontHZ_song_13);
  hBTN1=BUTTON_CreateEx(0,220,80,20,_hBackground,WM_CF_SHOW,0,901);
  hBTN2=BUTTON_CreateEx(80,220,80,20,_hBackground,WM_CF_SHOW,0,902);
  hBTN3=BUTTON_CreateEx(160,220,80,20,_hBackground,WM_CF_SHOW,0,903);
  hBTN4=BUTTON_CreateEx(240,220,80,20,_hBackground,WM_CF_SHOW,0,904);
  _UpdateFunctionBar("","","","语言切换");
  MENU_Attach(hM,hWin,0,0,320,20,0);

}
static void _ProgramStart(void){
  _hBackground =WM_CreateWindow(0,0,320,240,WM_CF_SHOW,&_backgroundMsg,0);
  //_hFrame = FRAMEWIN_CreateEx(64, 11, 191, 218, WM_HBKWIN, WM_CF_SHOW, FRAMEWIN_CF_MOVEABLE, 0,0,&_hFrameMsg);
  //FRAMEWIN_SetClientColor(_hFrame, GUI_INVALID_COLOR);
  //FRAMEWIN_SetFont       (_hFrame, &GUI_FontHZ_song_13);
  //FRAMEWIN_SetTextAlign  (_hFrame, GUI_TA_HCENTER);
  //FRAMEWIN_SetDefaultBarColor(0,GUI_YELLOW);
  //FRAMEWIN_AddCloseButton(_hFrame, FRAMEWIN_BUTTON_LEFT,  0);
  //FRAMEWIN_Maximize(_hFrame);
  //FRAMEWIN_SetResizeable (_hFrame, 1);
  _CreateMenu(_hBackground);
  //WM_SetFocus(_hBackground);
  while (_hBackground) {
    GUI_Delay(500);
  }
}

/*static void _hFrameMsg(WM_MESSAGE* pMsg) {
  GUI_RECT Rect;
  int x, y;
  switch (pMsg->MsgId) {
  case WM_PAINT:
    WM_GetInsideRect(&Rect);
    GUI_SetBkColor(GUI_GRAY);
    GUI_SetColor(GUI_BLACK);
    GUI_ClearRectEx(&Rect);
    GUI_DrawRectEx(&Rect);
    GUI_SetColor(GUI_WHITE);
    GUI_SetFont(&GUI_Font24_ASCII);
    x = WM_GetWindowSizeX(pMsg->hWin);
    y = WM_GetWindowSizeY(pMsg->hWin);
    //GUI_DispStringHCenterAt("Window 1", x / 2, (y / 2) - 12);
    break;
  default:
    WM_DefaultProc(pMsg); //要处理WM_GetInsideRect发过来的消息（检索内部矩形的大小）
  }
}
*/

static void _backgroundMsg(WM_MESSAGE* pMsg) {
  int LCDXSize = LCD_GET_XSIZE();
  int LCDYSize = LCD_GET_YSIZE();
  const GUI_BITMAP *pBitmap;
  GUI_RECT Rect;
  switch (pMsg->MsgId) {
  case WM_PAINT:
    WM_GetInsideRect(&Rect);
    GUI_SetBkColor(GUI_WHITE);
    GUI_SetColor(GUI_BLACK);
    GUI_ClearRectEx(&Rect);
	pBitmap=&bmbackground2;
	GUI_DrawBitmap(pBitmap,(LCDXSize-pBitmap->XSize)/2,(LCDYSize-pBitmap->YSize)/2);
    break;
  case WM_MENU:
	_OnMenu(pMsg);
    break;
  case WM_DELETE:
    _hBackground=0;
    break;
  default:
    WM_DefaultProc(pMsg); //要处理WM_GetInsideRect发过来的消息（检索内部矩形的大小）
  }
}
static void _initproc(){
	int Cnt =0;
	int i,a,linecounter,lineypos;
	WM_SetCreateFlags(WM_CF_MEMDEV);
	WIDGET_SetDefaultEffect_None();
	GUI_Init();
	GUI_SetBkColor(GUI_BLACK);
	GUI_Clear();
	GUI_Delay(2000);
	GUI_SetColor(GUI_WHITE);
	GUI_SetFont(&GUI_Font8_ASCII);
	for (lineypos=linecounter=a=i=0; i<1000; lineypos+=10,i+=10,a+=10) {
	 time_t nowtime = time(NULL);
     
	 GUI_DispStringAt("[",0,lineypos);
     GUI_DispDecAt(nowtime/10%10,10,lineypos,1);
	 GUI_DispDecAt(nowtime%10,16,lineypos,1);
     GUI_DispStringAt(".",22,lineypos);
	 GUI_DispDecAt(nowtime*10%10,28,lineypos,1);
	 GUI_DispDecAt(nowtime*100%10,34,lineypos,1);
	 GUI_DispStringAt("] initialization",40,lineypos);
     GUI_DispDecAt(a/10,140,lineypos,3);
	 GUI_DispStringAt("%",168,lineypos);
	 linecounter++;
	 
	 if(linecounter==24){
	 GUI_Clear();
	 lineypos=-10;
	 linecounter=-1;
	 }
     GUI_Delay(30);
	 
	 
  }
	_DispLogo();
}
static void _DispLogo(void){
	int Cnt =0;
	int LCDXSize = LCD_GET_XSIZE();
	int LCDYSize = LCD_GET_YSIZE();
	const GUI_BITMAP *pBitmap;
	GUI_Delay(1000);
	GUI_SetColor(0x0);
	GUI_SetBkColor(0xffffff);
	GUI_Delay(1000);
	GUI_Clear();
	pBitmap=&bmcredit;
	GUI_DrawBitmap(pBitmap,0,0);
	GUI_Delay(2000);
	GUI_Clear();
}
static void _hAboutDlg(WM_MESSAGE* pMsg){
  GUI_RECT Rect;
  int x, y; 
  EDIT_Handle TEXT1,TEXT2;
  const GUI_BITMAP *pBitmap;
  switch (pMsg->MsgId) {
  case WM_PAINT:
    WM_GetInsideRect(&Rect);
    GUI_SetBkColor(GUI_GRAY);
    GUI_SetColor(GUI_BLACK);
    GUI_ClearRectEx(&Rect);
    GUI_DrawRectEx(&Rect);
    GUI_SetColor(GUI_WHITE);
    GUI_SetFont(&GUI_FontHZ_song_13);
    x = WM_GetWindowSizeX(pMsg->hWin);
    y = WM_GetWindowSizeY(pMsg->hWin);
	pBitmap=&bmbackground2;
	GUI_DrawBitmap(pBitmap,(x-pBitmap->XSize)/2,(y-pBitmap->YSize)/3);

	//GUI_DispStringHCenterAt("Window 1", x / 2, (y / 2) - 12);
    break;
  default:
    WM_DefaultProc(pMsg); //要处理WM_GetInsideRect发过来的消息（检索内部矩形的大小）
  }
}
void MainTask(void) {

  int Cnt =0;
	_initproc();
  _ProgramStart();
  while(1){
   WM_HandlePID();
   GUI_Clear();
   GUI_Exec();
   GUI_Delay(1000);
  }

}