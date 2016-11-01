//+------------------------------------------------------------------+
//|                                          WL_ParabolicSARUtil.mqh |
//|                                     Copyright 2016, Tsuriganeboz |
//|                                  https://github.com/Tsuriganeboz |
//+------------------------------------------------------------------+
#include <WL/Structures/WL_SARParam.mqh>

#property copyright "Copyright 2016, Tsuriganeboz"
#property link      "https://github.com/Tsuriganeboz"
#property strict
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double WL_MTF_GetSAR(string symbol, int timeFrame,
                    int index)
{
   WL_SARParam param;
   param.Step = Step;
   param.Maximum = Maximum;

   return iSAR(symbol, timeFrame, param.Step, param.Maximum, index);
}
