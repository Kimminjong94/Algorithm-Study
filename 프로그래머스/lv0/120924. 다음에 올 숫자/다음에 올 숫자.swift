import Foundation

func solution(_ common:[Int]) -> Int {
    //등차수열일때
    if common[1] - common[0] == common[2] - common[1] {
        return common.last! + common[1] - common[0]
    //등비수열일때
    } else {
        return common.last! * common[1] / common[0]
    }
}