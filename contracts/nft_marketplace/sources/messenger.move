module devhub :: messenger {

use std::string::String;
use sui::object ::{Self, UID};
use sui::tranfer::{Self , transfer};
use sui::tx_context::{Self, TxContext};


struct Admin has  key {
id:UID
}

public struct Message has key{
    id:UID
    name : String,
    message : String,
    from: address,
    to: address,
}


public entry fun  create_message( _:Admin , name :vector<u8> , message : vector<u8> , from : address , to : address ,ctx :: &mut , tx_context ){

    let message = Message {
        id: UID::new(ctx),
        name : String::utf8(name),
        message : String::utf8(message),
        from,
        to
    };
transfer::transfer(message, tx_context::sender(ctx));
}

} 