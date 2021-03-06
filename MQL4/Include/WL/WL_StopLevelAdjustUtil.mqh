//+------------------------------------------------------------------+
//|                                       WL_StopLevelAdjustUtil.mqh |
//|                                    Copyright 2016, Tsuriganeboz  |
//|                                  https://github.com/Tsuriganeboz |
//+------------------------------------------------------------------+
#include <WL/Classes/WLStopLevel.mqh>

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
bool WL_AdjustStopLossForBuy(bool needExecute, double& refStopLossPrice)
{
   if (!needExecute)
      return false;
            

   WLStopLevel stopLevel;
   double stopLossPrice = stopLevel.LowerStopLevel();
   stopLossPrice -= Point;
   
   stopLossPrice = NormalizeDouble(stopLossPrice, Digits);
   
	if (refStopLossPrice != 0 
	      && refStopLossPrice > stopLossPrice
	      && stopLossPrice > OrderStopLoss())
	{
      refStopLossPrice = stopLossPrice;
      return true;
   }
   else 
   {
      return needExecute;     // そのまま返す。
   }
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool WL_AdjustStopLossForSell(bool needExecute, double& refStopLossPrice)
{
   if (!needExecute)
      return false;

      
   WLStopLevel stopLevel;
   double stopLossPrice = stopLevel.UpperStopLevel();
   stopLossPrice += Point;
   
   stopLossPrice = NormalizeDouble(stopLossPrice, Digits);

	if (refStopLossPrice != 0
	      && refStopLossPrice < stopLossPrice
	      && stopLossPrice < OrderStopLoss())
	{
      refStopLossPrice = stopLossPrice;
      return true;
   }
   else 
   {
      return needExecute;     // そのまま返す。
   }
}
