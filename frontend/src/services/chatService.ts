interface ChatResponse {
  response: string;
}

export const chatService = {
  sendMessage: async (message: string): Promise<string> => {
    try {
      const res = await fetch("http://localhost:8080/chat", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ message }),
      });

      if (!res.ok) throw new Error("Network response was not ok");
      
      const data: ChatResponse = await res.json();
      return data.response;
    } catch (error) {
      console.error("Chat service error:", error);
      throw error;
    }
  }
};