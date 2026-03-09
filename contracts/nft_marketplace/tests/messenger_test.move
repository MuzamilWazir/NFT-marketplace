#[test_only]
module devhub :: messenger_tests{
    use sui::test_scenario;
    use exapmle :: messenger ::{Self ,Messanger , Admin};


    #[test]
    fun test_create_message(){  

        let owner = @0x123;
        let user1 = @0x456;
        let user2 = @0x789;

    

        let scenario_val = test_scenario::negin(owner);
        let scenario = &mut scenario_val;


        test_scenario::next_tx(scenario, owner);
        {
            messenger :: init_for_testing(test_scenario::ctx(scenario));
        }

        test_scenario::next_tx(scenario, owner);
        {
          let admin = test_scenario :: take_from_sender<Admin>(scenario);

          messanger :: create_message(admin , b"Hello" , b"How are you?" , user1 , user2 , test_scenario::ctx(scenario));
          assert!(!test_scenario :: has_most_recent_for_sender<Message>(scenario),0);
      test_scenario::return_tosender(scenario,admin)
      
        }

        test_scenario::next_tx(scenario , user2)
        {
            assert!(test_scenario::has_most_recent_for_sender<Message>(scenario),0);
        }
    }
}

