tc: o(N) sc: o(N)

public int rob(int[] nums) {
        if(nums.length ==1){
            return nums[0];
        }
     	int[] t = new int[nums.length+1];
       Arrays.fill(t,-1);
       ArrayList<Integer> t1 = new ArrayList<Integer>();
          for(int i=0;i<nums.length;i++){
                t1.add(nums[i]);
        }

        return solve(t1 , t1.size()-1,t);

    }
    public static int solve(ArrayList<Integer> arr , int index,int[] t){ 
        if(index==0){
            return arr.get(index);
        }
        if(index<0){
            return 0;
        }
        
        if(t[index] !=-1){
            return t[index];
        }
        int pick = arr.get(index) + solve(arr,index-2,t);
        int notPick = 0+ solve(arr,index-1,t);
        
        return t[index]=Math.max(pick,notPick);
        
    }
	
	
//house robber ||

 public int rob(int[] nums) {
        if(nums.length ==1){
            return nums[0];
        }
     	int[] t = new int[nums.length+1];
       Arrays.fill(t,-1);
       ArrayList<Integer> t1 = new ArrayList<Integer>();
       ArrayList<Integer> t2 = new ArrayList<Integer>();
        
        for(int i=0;i<nums.length;i++){
            if(i!=0){
                t1.add(nums[i]);
            }
             if(i!=nums.length-1){
                t2.add(nums[i]);
             }
        }

        int m1 = solve(t1 , t1.size()-1,t);

        Arrays.fill(t,-1);

        int m2=solve(t2 , t2.size()-1,t);

        return Math.max(m1,m2 );
    }
    public static int solve(ArrayList<Integer> arr , int index,int[] t){ 
        if(index==0){
            return arr.get(index);
        }
        if(index<0){
            return 0;
        }
        
        if(t[index] !=-1){
            return t[index];
        }
        int pick = arr.get(index) + solve(arr,index-2,t);
        int notPick = 0+ solve(arr,index-1,t);
        
        return t[index]=Math.max(pick,notPick);
        
    }