module 0x0 :: messenger {

use std::string::String;

public struct Message {
    name : String,
    message : String,
    from: address,
    to: address,
}

} 