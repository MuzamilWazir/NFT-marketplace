module nft_marketplace::counter {

    use sui::object;
    use sui::tx_context;
    use sui::transfer;

    public struct Counter has key, store {
        id: object::UID,
        value: u64,
    }

    public fun create(ctx: &mut tx_context::TxContext) {
        let counter = Counter {
            id: object::new(ctx),
            value: 0,
        };

        transfer::transfer(counter, tx_context::sender(ctx));
    }

    public fun increment(counter: &mut Counter) {
        counter.value = counter.value + 1;
    }
}