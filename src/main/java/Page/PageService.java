package Page;

public class PageService {
	public static String getNavi(String url, int pagenumber, int pageBlock, int totalCount) {
		String result = "";
		
		int totalPage = totalCount / pageBlock;
		if(totalCount % pageBlock > 0)
			totalPage++;
		if (totalPage <=1) {
			return result;
		}
		if(pagenumber<= 1){
			
		}else{
			int tmp = pagenumber - 1;
			result += "<a href='"+url + tmp+"'>[이전] </a>";
		} 
		
		for(int i = 1; i <= totalPage; i++){
			if(pagenumber == i)
				result += "<b> " + i + " </b>";
			else	
				result += "<a href='"+url + i+"'> "+ i +" </a>";
		}
		
		if(pagenumber >= totalPage){
			
		}else{
			int tmp = pagenumber + 1;
			result += "<a href='"+url + tmp+"'>[다음] </a>";
		} 
		return result;
	}
}
