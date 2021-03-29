package main

import (
	"fmt"
	"strings"
)

func FindMaxFormMemoization(strs []string, m int, n int) int {
	strsLen := len(strs)

	freqCounts := make([][]int, strsLen)
	for i := range strs {
		numZeros := strings.Count(strs[i], "0")
		numOnes := len(strs[i]) - numZeros
		freqCounts[i] = []int{numZeros, numOnes}
	}

	dp := make([][][]int, strsLen)
	for i := range dp {
		dp[i] = make([][]int, m+1)
		for j := range dp[i] {
			dp[i][j] = make([]int, n+1)
			for k := range dp[i][j] {
				dp[i][j][k] = -1
			}
		}
	}

	return dfs(0, m, n, strsLen, &freqCounts, &dp)
}

func dfs(idx, numZeros, numOnes, strsLen int, freqCounts *[][]int, dp *[][][]int) int {
	if idx == strsLen {
		return 0
	}

	if (*dp)[idx][numZeros][numOnes] > -1 {
		return (*dp)[idx][numZeros][numOnes]
	}

	maxSubSets := 0
	for i := idx; i < strsLen; i++ {
		nextNumZeros := numZeros - (*freqCounts)[i][0]
		nextNumOnes := numOnes - (*freqCounts)[i][1]
		if nextNumZeros > -1 && nextNumOnes > -1 {
			numSubSets := dfs(i+1, nextNumZeros, nextNumOnes, strsLen, freqCounts, dp) + 1
			if maxSubSets < numSubSets {
				maxSubSets = numSubSets
			}
		}
	}

	(*dp)[idx][numZeros][numOnes] = maxSubSets
	return maxSubSets
}

func FindMaxFormTabulation(strs []string, m int, n int) int {
	dp := make([][]int, m+1)
	for i := range dp {
		dp[i] = make([]int, n+1)
	}

	for i := range strs {
		str := strs[i]
		numZeros := strings.Count(str, "0")
		numOnes := len(str) - numZeros
		for j := m; j >= numZeros; j-- {
			for k := n; k >= numOnes; k-- {
				subsetSize := dp[j-numZeros][k-numOnes] + 1
				if dp[j][k] < subsetSize {
					dp[j][k] = subsetSize
				}
			}
		}
	}
	return dp[m][n]
}

func main() {
	fmt.Println("Hello World!")
}
