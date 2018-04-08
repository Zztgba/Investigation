window.onload=function (){
	var oLog=document.getElementById('log');
	var oRe=document.getElementById('re');
	var oMain=document.getElementById('main');
	var oMain1=document.getElementById('main1');

	oLog.onclick=function (){
		oLog.style.color='#fff';
		oLog.style.background='#cb995c';
		oRe.style.color='#cb995c';
		oRe.style.background='none';
		oMain.style.display='block';
		oMain1.style.display='none';
	}
	oRe.onclick=function (){
		oRe.style.color='#fff';
		oRe.style.background='#cb995c';
		oLog.style.color='#cb995c';
		oLog.style.background='none';
		oMain1.style.display='block';
		oMain.style.display='none';
	}


}
