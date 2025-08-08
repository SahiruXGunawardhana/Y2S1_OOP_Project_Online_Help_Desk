package articles;



public class Article {
    private int id;
    private String title;
    private String content;
    private String article_category;
	

  

    public Article(int id, String title, String content, String article_category) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.article_category = article_category;
	}

	// Overloaded constructor (for title-only use)
    public Article(int id, String title) {
        this.id = id;
        this.title = title;
    }

    // Getters
    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

	public String getArticle_category() {
		return article_category;
	}

	public void setArticle_category(String article_category) {
		this.article_category = article_category;
	}
    
}
