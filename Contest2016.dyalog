:Namespace Contest2016
⍝ === VARIABLES ===

AboutMe←,⊂'I''m an Electrical and Computer Engineering student at the University of CapeTown. I have coded in all major languages including Java, Python Javascript, C, C++ among others.'

FilePath←'D:\GeekyPlans\Dyalog2016\'

Reaction←,⊂'I throughly ebjoyed the competition as it challenged me to think in APL terms. I like that there are more prizes this year. '


⍝ === End of variables definition ===

(⎕IO ⎕ML ⎕WX)←1 0 3

:Namespace bio

 ⎕IO  ←0 ⍝ *** DO NOT change these system variables here, only after the variables definition 

⍝ === VARIABLES ===

ind←1

l←,10

s←1+⍳10

s1←186.07931 287.12699 548.20532 580.18077 681.22845 706.27446 782.27613

s2←101.04768 158.06914 202.09536 318.09979 419.14747 463.17369

shape←4 5

t←1 8 9 3 2 7 6 5 4 10


⍝ === End of variables definition ===

(⎕IO ⎕ML ⎕WX)←1 0 3

 apply_perm←{⍺[⍵]}

∇ r←s interleave t;i;j;L;n;m
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ Bioinformatics Problem 2 Task 1 m←1+⍴,s
 n←1+⍴,t
 m←1+⍴,s
 L←(m,n)⍴0
     
 :For i :In m+1-⍳m
     :For j :In n+1-⍳n
         :If (i=m)∧(j=n)
             L[m;n]←2147483648
         :ElseIf (i=m)∧~(j=n)
             L[i;j]←n-j
         :ElseIf (j=n)∧~(i=m)
             L[i;j]←m-i
         :ElseIf s[i]=t[j]
             L[i;j]←1+L[i+1;j+1]
         :ElseIf ~(s[i]=t[j])
             L[i;j]←1+⌊/L[i+1;j],L[i;j+1]
         :EndIf
     :EndFor
 :EndFor
     
 r←''
 ind←1
 :While (i<m)∧(j<n)
     :If s[i]=t[j]
         r←r,s[i]
         i←i+1
         j←j+1
     :Else
         :If L[i+1;j]<L[i;j+1]
             r←r,s[i]
             i←i+1
         :Else
             r←r,t[j]
             j←j+1
         :EndIf
     
     
     :EndIf
     
 :EndWhile
     
 :While i<m
     r←r,s[i]
     i←i+1
 :EndWhile
     
 :While i<m
     r←r,t[j]
     j←j+1
 :EndWhile
∇

 inv_perm←{⍵⍳⍳⍴,⍵}

∇ r←s lcs t;m;n;i;j;L
 m←1+⍴,s
 n←1+⍴,t
     
 L←(m,n)⍴0
     
 :For i :In m+1-⍳m
     :For j :In n+1-⍳n
         :If (i=m)∧(j=n)
             L[m;n]←2147483648
         :ElseIf (i=m)∧~(j=n)
             L[i;j]←n-j
         :ElseIf (j=n)∧~(i=m)
             L[i;j]←m-i
         :ElseIf s[i]=t[j]
             L[i;j]←1+L[i+1;j+1]
         :ElseIf ~(s[i]=t[j])
             L[i;j]←1+⌊/L[i+1;j],L[i;j+1]
         :EndIf
     :EndFor
 :EndFor
     
 r←''
 ind←1
 :While (i<m)∧(j<n)
     :If s[i]=t[j]
         r←r,s[i]
         i←i+1
         j←j+1
     :Else
         :If L[i+1;j]<L[i;j+1]
             r←r,s[i]
             i←i+1
         :Else
             r←r,t[j]
             j←j+1
         :EndIf
     
     
     :EndIf
     
 :EndWhile
     
 :While i<m
     r←r,s[i]
     i←i+1
 :EndWhile
     
 :While i<m
     r←r,t[j]
     j←j+1
 :EndWhile
∇

∇ R←s maxMult t;v;r
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ Bioinformatics Problem 1 Task 1
 v←⊃,/s-¨⊂t
 r←{⍵[(f=⌈/f←+⌿⍵∘.=⍵)/⍳⍴⍵]}v
 R←(⍴r),∪r
∇

∇ r←pi reversals sigma;p;a;j;i;g;ind;l
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ Bioinformatics Problem 3 Task 1
 p←inv_perm sigma
 a←p apply_perm pi
 l←⍴a
 r←0
 g←⍬
     
 :For j :In l+1-⍳l-1
     :For i :In ⍳l
         :If a[i]=j
             :Leave
         :EndIf
     
     :EndFor
     :If j>i
         g←g,(⊂i j)
         r←r+1
         ind←¯1+i+⍳1+j-i
         a[ind]←⌽a[ind]
     
     :EndIf
     
 :EndFor
 r←r(g)
∇

:EndNamespace 
:Namespace fin
(⎕IO ⎕ML ⎕WX)←1 0 3

∇ r←maturities forward rates
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ Finance Problem 1 Task 1
∇

∇ r←abc pdf value
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ Finance Problem 2 Task 1
∇

∇ r←abc pdf2 values
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ Finance Problem 2 Task 2
∇

∇ r←profit
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ Finance Problem 3 Task 1
∇

:EndNamespace 
:Namespace gen
(⎕IO ⎕ML ⎕WX)←1 0 3

∇ r←chiSquareTest counts
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ General Computing Problem 2 Task 2
∇

∇ r←expected counts
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ General Computing Problem 2 Task 1
∇

∇ r←drugs matchDrugs inputs
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ General Computing Problem 3 Task 1
∇

∇ r←winner board
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ General Computing Problem 1 Task 1
∇

:EndNamespace 
:EndNamespace 