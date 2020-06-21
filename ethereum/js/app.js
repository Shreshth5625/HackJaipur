App = {
    web3Provider: null,
    contracts: {},
  
    init: async function() {
      // Load pets.
    //   $.getJSON('../pets.json', function(data) {
    //     var petsRow = $('#petsRow');
    //     var petTemplate = $('#petTemplate');
  
    //     for (i = 0; i < data.length; i ++) {
    //       petTemplate.find('.panel-title').text(data[i].name);
    //       petTemplate.find('img').attr('src', data[i].picture);
    //       petTemplate.find('.pet-breed').text(data[i].breed);
    //       petTemplate.find('.pet-age').text(data[i].age);
    //       petTemplate.find('.pet-location').text(data[i].location);
    //       petTemplate.find('.btn-adopt').attr('data-id', data[i].id);
  
    //       petsRow.append(petTemplate.html());
    //     }
    //   });
  
      return await App.initWeb3();
    },
  
    initWeb3: async function() {  //here we are checking different version of dapp browsers for dapp development
      // Modern dapp browsers...
      if (window.ethereum) {  // we check  if there is an ethereum provider injected in window object
        App.web3Provider = window.ethereum;
        try {
          // Request account access
          await window.ethereum.enable();
        } catch (error) {
          // User denied account access...
          console.error("User denied account access")
        }
      }
      // Legacy dapp browsers...
      else if (window.web3) {   //if ethereum instance is not available, we check for injected web3 instance to create our web3 object
        App.web3Provider = window.web3.currentProvider;
      }
  
      // If no injected web3 instance is detected, fall back to Ganache
      else {  
        App.web3Provider = new Web3.providers.HttpProvider('http://localhost:7545');
      }
      web3 = new Web3(App.web3Provider);
  
          return App.initContract();
    },
  
    initContract: function() {
      $.getJSON('BuyItem.json', function(data) {
        // Get the necessary contract artifact file and instantiate it with @truffle/contract
        var BuyArtifact = data;
        App.contracts.BuyItem = TruffleContract(BuyArtifact); //TruffleContract()=>This creates an instance of the contract we can interact with.
      
        // Set the provider for our contract
        App.contracts.BuyItem.setProvider(App.web3Provider);
      
        // Use our contract to retrieve and mark the adopted pets
        return App.markBought();
      });
      return App.bindEvents();
    },
  
  
    bindEvents: function() {
      $(document).on("click", '.btn-Pay with Ether', App.handleAdopt);
    },
  
    markBought: function(buyer, account) {
        var buyInstance;
  
      App.contracts.BuyItem.deployed().then(function(instance) {
        buyInstance = instance;  // access deployed contract and create an instance
  
        return buyInstance.getbuyer.call();  // call getAdpoters() on that instance
      }).then(function(buyer) {
        for (i = 0; i < buyer.length; i++) { //checking to see if an address is stored for each pet.
          if (buyer[i] !== '0x0000000000000000000000000000000000000000') {
            $('.panel-pet').eq(i).find('button').text('Success').attr('disabled', true);
          }
        }
      }).catch(function(err) {
        console.log(err.message);
      });
    },
  
    handleAdopt: function(event) {
      event.preventDefault();
  
      var itemId = parseInt($(event.target).data('id'));
      var buyInstance;
  
      web3.eth.getAccounts(function(error, accounts) {
        if (error) {
          console.log(error);
        }
  
        var account = accounts[0];
  
        App.contracts.BuyItem.deployed().then(function(instance) {
            buyInstance = instance;
  
            // Execute adopt as a transaction by sending account
            return buyInstance.adopt(itemId, {from: account});
          }).then(function(result) {
            return App.markBought();
          }).catch(function(err) {
            console.log(err.message);
          });
      });
    }
  
  };
  
  $(function() {
    $(window).load(function() {
      App.init();
    });
  });
  