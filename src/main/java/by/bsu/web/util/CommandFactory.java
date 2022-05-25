package by.bsu.web.util;

import by.bsu.web.Command.Balance.BalanceListCommand;
import by.bsu.web.Command.Card.*;
import by.bsu.web.Command.User.*;

public class CommandFactory {
    public Command create(String command){
        switch (command){
            case "login":
                return new LoginCommand();
            case "Logout":
                return new LogoutCommand();
            case "Main":
                return new MainPage();
            case "cardList":
                return new CradListCommand();
            case "addCards":
                return new AddCards();
            case "addCardMain":
                return new AddCardMainCommand();
            case "register":
                return new Register();
            case "registerMain":
                return new RegisterMain();
            case "deleteRecord":
                return new DeleteRecord();
            case "updateCards":
                return new UpdateCards();
            case "updateCardMain":
                return new UpdateCardsMain();
            case "balanceList":
                return new BalanceListCommand();
            case "userList":
                return new UserListCommand();
            case "updateUser":
                return new UpdateUser();
            case "updateUserMain":
                return new UpdateUserMain();
            case "deleteUser":
                return new DeleteUser();
            case "logout":
                return new LogoutCommand();
            default:
                throw new UnsupportedOperationException();

        }
    }
}
