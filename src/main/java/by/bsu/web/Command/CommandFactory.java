package by.bsu.web.Command;

public class CommandFactory {
    public Command create(String command){
        switch (command){
            case "login":
                return new LoginCommand();
            case "Logout":
                return new LoginCommand();
            case "bookList":
                return new PostListCommand();
            case "addBook":
                return new AddPostCommand();
            case "addBookMain":
                return new AddPostMainCommand();
            default:
                throw new UnsupportedOperationException();

        }
    }
}
