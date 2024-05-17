import heapq

def solution(scoville, K):
    # Convert the scoville list into a heap
    heapq.heapify(scoville)
    
    count = 0
    
    while scoville[0] < K:
        if len(scoville) < 2:
            return -1
        
        # Extract the two smallest elements
        first = heapq.heappop(scoville)
        second = heapq.heappop(scoville)
        
        # Create the new Scoville score
        new_score = first + (second * 2)
        
        # Add the new score back to the heap
        heapq.heappush(scoville, new_score)
        
        count += 1
    
    return count