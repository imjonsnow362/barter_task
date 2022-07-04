const options = {
  type: "native",
  amount: Moralis.Units.ETH("0.5"),
  receiver: "0x..",
};
let result = await Moralis.transfer(options);
