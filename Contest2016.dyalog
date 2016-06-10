:Namespace Contest2016
⍝ === VARIABLES ===

AboutMe←,⊂'I''m an Electrical and Computer Engineering student at the University of CapeTown. I have coded in most of the major languages including Java, C, C++ among many others.'

FilePath←'D:\GeekyPlans\Dyalog2016\'

Reaction←,⊂'It was challenging in a good way. I learnt to better express code without loops'


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
⍝ === VARIABLES ===

board←5 5⍴'∘∘∘∘∘∘∘BB∘RRBB∘∘RR∘∘∘∘∘∘∘'

board2←5 5⍴'∘∘∘∘∘∘∘B∘BRRBB∘∘RR∘∘∘∘∘∘∘'

counts←2 3⍴3 2 4 8 9 12

d←'ASPIRIN' 'METAMUCIL' 'PENICILLIN'

i←'PENICILIN' 'ASPIRIN 250MG' 'METAMUSEL' 'ASPRIN'

t←2 3⍴3 2 4 8 9 12


⍝ === End of variables definition ===

(⎕IO ⎕ML ⎕WX)←1 0 3

∇ r←chiSquareTest counts;exp;e
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ General Computing Problem 2 Task 2
 exp←expected counts
 r←+/,+/(e×e←exp-counts)÷exp
∇

∇ r←expected counts;rs;cs;sum
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ General Computing Problem 2 Task 1
 rs←,+/counts
 cs←,+/[1]counts
 sum←+/rs
 r←rs∘.×cs÷sum
∇

∇ r←drugs matchDrugs inputs;ind;ld;in;dist;dists
     ⍝ Function stub for 2016 APL Problem Solving Competition Phase 2
     ⍝ General Computing Problem 3 Task 1
     ⍝ Levelshtein distance
 dist←{⎕ML←0                     ⍝ Levenshtein distance.
     a←(n+1)⍴(⍴⍺)+n←⍴⍵           ⍝ first row of matrix
     f←⍵{⌊\⍵⌊(⊃⍵),(¯1↓⍵)-1+⍺=⍺⍺} ⍝ iteration step
     z←⊃f/(⌽⍺),⊂a                ⍝ last row of matrix
     ⊃⌽z
 }
 r←⍬
 ld←⍴drugs
     
 :For in :In inputs
     ind←dists⍳(⌊/dists←dists←(ld⍴⊂in)dist¨drugs)
     
     r←r,ind
 :EndFor
∇

 uni←{⍵}

∇ r←winner vec;c;u;i;max;maxu;m;t;v;s;j
     
 max←0
 maxu←'∘'
      ⍝ rows
 :For i :In ⍳5
     s←u[c⍳m←⌈/c←+/(u←∪,vec[i;])∘.=vec[i;]]
     max←((~t)×max)+(t←(m>max)∨((m=4)∧~s='∘'))×m
     maxu←(t,~t)/(s,maxu)
 :EndFor
     
      ⍝ columns
 :For i :In ⍳5
     s←u[c⍳m←⌈/c←+/(u←∪,vec[;i])∘.=vec[;i]]
     max←((~t)×max)+(t←(m>max)∨((m=4)∧~s='∘'))×m
     maxu←(t,~t)/(s,maxu)
 :EndFor
     
      ⍝diagonals
 s←u[c⍳m←⌈/c←+/(u←∪,v)∘.=v←1 1⍉vec]
 max←((~t)×max)+(t←(m>max)∨((m=4)∧~s='∘'))×m
 maxu←(t,~t)/(s,maxu)
     
 s←u[c⍳m←⌈/c←+/(u←∪,v)∘.=v←1 1⍉¯4↑vec]
 max←((~t)×max)+(t←(m>max)∨((m=4)∧~s='∘'))×m
 maxu←(t,~t)/(s,maxu)
     
 s←u[c⍳m←⌈/c←+/(u←∪,v)∘.=v←1 1⍉¯4↑[2]vec]
 max←((~t)×max)+(t←(m>max)∨((m=4)∧~s='∘'))×m
 maxu←(t,~t)/(s,maxu)
      ⍝square
      ⍝⎕←maxu
 :For i :In ⍳4
     :For j :In ⍳4
     
         s←u[c⍳m←⌈/c←+/(u←∪,v)∘.=v←,vec[i,i+1;j,j+1]]
         max←((~t)×max)+(t←(m>max)∨((m=4)∧~s='∘'))×m
         maxu←(t,~t)/(s,maxu)
     :EndFor
 :EndFor
     
      ⍝⎕←maxu
 r←maxu
∇

:EndNamespace 
:EndNamespace 