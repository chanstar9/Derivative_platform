BEGIN_FUNCTION_MAP
	.Func,해외선물옵션시간대별(Tick)체결(o3136)-API용,o3136,attr,block,svr=OVS,headtype=A;
	BEGIN_DATA_MAP
	o3136InBlock,기본입력,input;
	begin
		조회구분(0:당일1:전일),gubun,gubun,char,1;
		시장구분,mktgb,mktgb,char,1;
		단축코드,shcode,shcode,char,16;
		조회갯수,readcnt,readcnt,long,4;
		순번CTS,cts_seq,cts_seq,long,8;
	end
	o3136OutBlock,출력,output;
	begin
		순번CTS,cts_seq,cts_seq,long,8;
	end
	o3136OutBlock1,출력1,output,occurs;
	begin
		현지일자,ovsdate,ovsdate,char,8;
		현지시간,ovstime,ovstime,char,6;
		현재가,price,price,double,15.9;
		전일대비구분,sign,sign,char,1;
		전일대비,change,change,double,15.9;
		등락율,diff,diff,double,6.2;
		체결수량,cvolume,cvolume,long,10;
		누적거래량,volume,volume,long,10;
	end
	END_DATA_MAP
END_FUNCTION_MAP

