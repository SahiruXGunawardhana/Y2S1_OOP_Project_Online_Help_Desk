package HelpDeskPackage;

public class TicketReplyModel {
	
	private int id;
	private int ticketId;
	private String reply;
	
	public TicketReplyModel(int id, int ticketId, String reply) {
		super();
		this.id = id;
		this.ticketId = ticketId;
		this.reply = reply;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTicketId() {
		return ticketId;
	}

	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}
	
	

}

