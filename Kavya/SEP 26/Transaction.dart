class Transactions
{
  String? amount,person,date,action;
  Transactions({this.amount,this.person,this.date,this.action="Recieved"});
}
List TransactionsList=[Transactions(amount: "₹400",person:"Raju Enterprises",date:"Sep 25",action: "Sent"),
  Transactions(amount: "₹400",person:"Priya ",date:"Sep 24",),
  Transactions(amount: "₹20",person:"Rashi",date:"Sep 23",action: "Sent"),
  Transactions(amount: "₹80",person:"Bro",date:"Sep 22",),
  Transactions(amount: "₹1000",person:"Ram",date:"Sep 21",action: "Sent"),
  Transactions(amount: "₹500",person:"SS digital",date:"Sep 20",action: "Sent"),
  Transactions(amount: "₹70",person:"Delivery",date:"Sep 20",),
  Transactions(amount: "₹40",person:"Prem Enterprises",date:"Sep 19",action: "Sent"),
  Transactions(amount: "₹55",person:"Xerox",date:"Sep 18",action: "Sent"),
  Transactions(amount: "₹40",person:"ZOMATO",date:"Sep 15",action: "Sent"),
  Transactions(amount: "₹4",person:"Sona",date:"Sep 15",),
  Transactions(amount: "₹67",person:"Shyam",date:"Sep 15",),
  Transactions(amount: "₹1290",person:"SWIGGY",date:"Sep 10",action: "Sent"),
  Transactions(amount: "₹679",person:"Ice Creams",date:"Sep 8",action: "Sent"),

];