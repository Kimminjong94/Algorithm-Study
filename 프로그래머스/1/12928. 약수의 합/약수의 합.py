def solution(n):
    factors_and_quotients = set()
    
    for i in range(1, n + 1):
        
        if n % i == 0:
            
            factors_and_quotients.add(n // i)
            factors_and_quotients.add(n % i)
        
    
    
    
    return sum(factors_and_quotients)