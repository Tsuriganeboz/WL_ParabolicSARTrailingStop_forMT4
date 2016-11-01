//+------------------------------------------------------------------+
//|                                                  WLStopLevel.mqh |
//|                                    Copyright 2016, Tsuriganeboz  |
//|                                  https://github.com/Tsuriganeboz |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, Tsuriganeboz"
#property link      "https://github.com/Tsuriganeboz"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
class WLStopLevel
  {
private:

public:
                     WLStopLevel();
                    ~WLStopLevel();
                    
   double StopLevel();
   double UpperStopLevel();
   double LowerStopLevel();

  };
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
WLStopLevel::WLStopLevel()
  {
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
WLStopLevel::~WLStopLevel()
  {
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double WLStopLevel::StopLevel()
{
   double stopLevel = MarketInfo(Symbol(), MODE_STOPLEVEL) * Point;
   return stopLevel;
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double WLStopLevel::UpperStopLevel()
{
   return Ask + StopLevel();
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double WLStopLevel::LowerStopLevel()
{
   return Bid - StopLevel();
}

//+------------------------------------------------------------------+