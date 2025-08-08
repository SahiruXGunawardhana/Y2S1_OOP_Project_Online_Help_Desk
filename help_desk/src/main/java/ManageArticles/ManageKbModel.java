package ManageArticles;

public class ManageKbModel {
	private int id;
	private String article_title;
	private String article_content;
	private String article_category;
	
	public ManageKbModel(int id, String article_title, String article_content, String article_category) {
		super();
		this.id = id;
		this.article_title = article_title;
		this.article_content = article_content;
		this.article_category = article_category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getArticle_title() {
		return article_title;
	}

	public void setArticle_title(String article_title) {
		this.article_title = article_title;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public String getArticle_category() {
		return article_category;
	}

	public void setArticle_category(String article_category) {
		this.article_category = article_category;
	}
	
	


}
