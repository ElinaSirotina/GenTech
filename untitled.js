db.transactions.aggregate([
    {
        '$lookup': {
            'from': 'users',
            'localField': 'sender_id',
            'foreignField': 'id',
            'as': 'sender'
        }
    },
     {
        '$lookup': {
            'from': 'goods',
            'localField': 'price',
            'foreignField': 'id',
            'as': 'sender'
        }
    },
    {
        '$match': {
            'sender.is_europe': true,
            
        }
    },
   
    { 
        '$project': {
          
           'currency': {
               '$multiply': ['eur', 1.05]
           }
       }
        
    }  
])