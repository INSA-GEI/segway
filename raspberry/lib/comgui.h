 /*
 * Copyright (C) 2018 dimercur
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef __COMGUI_H__
#define __COMGUI_H__

#include "messages.h"
#include <string>

using namespace std;
     
/**
 * Class used for generating a server and communicating through it with GUI
 * 
 * @brief Communication class with GUI (server)
 * 
 */
class ComGui {
public:
    /**
     * Constructor
     */
    ComGui() {}
    
    /**
     * Destructor
     */
    virtual ~ComGui() {}
    
    /**
     * Create a server and open a socket over TCP
     * 
     * @param port Port used for communication
     * @return Socket number
     * @throw std::runtime_error if it fails
     */
    int Open(int port);
    
    /**
     * Close socket and server
     */
    void Close();
    
    /**
     * Wait for a client to connect
     * @return Client number 
     * @throw std::runtime_error if it fails
     */
    int AcceptClient();
    
    /**
     * Send a message to GUI
     * 
     * @param msg Message to send to GUI
     * @attention Message given in parameter will be destroyed (delete) after being sent. No need for user to delete message after that.
     * @warning Write is not thread safe : check that multiple tasks can't access this method simultaneously  
     */
    void Write(Message* msg);
    
    /**
     * Function called at beginning of Write method
     * Use it to do some synchronization (call of mutex, for example)
     */
    virtual void Write_Pre() {}
    
    /**
     * Function called at end of Write method
     * Use it to do some synchronization (release of mutex, for example)
     */
    virtual void Write_Post() {}
protected:
    /**
     * Socket descriptor
     */
    int socketFD = -1;
    
    /**
     * Socket descriptor
     */
    int clientID = -1;
    
    /**
     * Method used internally to convert a message content to a string that can be sent over TCP
     * @param msg Message to be converted
     * @return A string, image of the message
     */
    string *MessageToString(Message *msg);
};

#endif /* __COMGUI_H__ */
