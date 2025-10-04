; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000511-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000511-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @abort() #2
  unreachable

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 7, i32* %2, align 4
  store i32 6, i32* %3, align 4
  store i32 4, i32* %4, align 4
  store i32 7, i32* %5, align 4
  store i32 2, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = srem i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %0
  %15 = phi i1 [ true, %0 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  call void @f(i32 noundef %16, i32 noundef 1)
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %20, %21
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  call void @f(i32 noundef %25, i32 noundef 2)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %2, align 4
  call void @f(i32 noundef %28, i32 noundef 2)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = srem i32 %29, %30
  %32 = load i32, i32* %2, align 4
  %33 = mul nsw i32 %32, %31
  store i32 %33, i32* %2, align 4
  call void @f(i32 noundef %33, i32 noundef 4)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = srem i32 %34, %35
  %37 = load i32, i32* %2, align 4
  %38 = sdiv i32 %37, %36
  store i32 %38, i32* %2, align 4
  call void @f(i32 noundef %38, i32 noundef 2)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = srem i32 %39, %40
  %42 = load i32, i32* %2, align 4
  %43 = srem i32 %42, %41
  store i32 %43, i32* %2, align 4
  call void @f(i32 noundef %43, i32 noundef 0)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = srem i32 %44, %45
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %2, align 4
  call void @f(i32 noundef %48, i32 noundef 2)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %24
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br label %59

59:                                               ; preds = %57, %24
  %60 = phi i1 [ true, %24 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  call void @f(i32 noundef %61, i32 noundef 1)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  %72 = zext i1 %71 to i32
  br label %74

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 0, %73 ]
  call void @f(i32 noundef %75, i32 noundef 1)
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i1 [ false, %74 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %5, align 4
  call void @f(i32 noundef %83, i32 noundef 1)
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i1 [ false, %81 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 %92, %91
  store i32 %93, i32* %5, align 4
  call void @f(i32 noundef %93, i32 noundef 1)
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br label %99

99:                                               ; preds = %96, %89
  %100 = phi i1 [ false, %89 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %5, align 4
  %103 = srem i32 %102, %101
  store i32 %103, i32* %5, align 4
  call void @f(i32 noundef %103, i32 noundef 0)
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %106, %99
  %110 = phi i1 [ false, %99 ], [ %108, %106 ]
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %5, align 4
  call void @f(i32 noundef %113, i32 noundef 1)
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %116, %109
  %120 = phi i1 [ false, %109 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  %122 = load i32, i32* %5, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %5, align 4
  call void @f(i32 noundef %123, i32 noundef 0)
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br label %132

132:                                              ; preds = %129, %126, %119
  %133 = phi i1 [ true, %126 ], [ true, %119 ], [ %131, %129 ]
  %134 = zext i1 %133 to i32
  call void @f(i32 noundef %134, i32 noundef 1)
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  br label %143

143:                                              ; preds = %140, %137
  %144 = phi i1 [ true, %137 ], [ %142, %140 ]
  %145 = zext i1 %144 to i32
  br label %147

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i32 [ %145, %143 ], [ 0, %146 ]
  call void @f(i32 noundef %148, i32 noundef 0)
  %149 = load i32, i32* %4, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %154, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br label %154

154:                                              ; preds = %151, %147
  %155 = phi i1 [ true, %147 ], [ %153, %151 ]
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %5, align 4
  call void @f(i32 noundef %156, i32 noundef 1)
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br label %162

162:                                              ; preds = %159, %154
  %163 = phi i1 [ true, %154 ], [ %161, %159 ]
  %164 = zext i1 %163 to i32
  %165 = load i32, i32* %5, align 4
  %166 = mul nsw i32 %165, %164
  store i32 %166, i32* %5, align 4
  call void @f(i32 noundef %166, i32 noundef 1)
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br label %172

172:                                              ; preds = %169, %162
  %173 = phi i1 [ true, %162 ], [ %171, %169 ]
  %174 = zext i1 %173 to i32
  %175 = load i32, i32* %5, align 4
  %176 = srem i32 %175, %174
  store i32 %176, i32* %5, align 4
  call void @f(i32 noundef %176, i32 noundef 0)
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br label %182

182:                                              ; preds = %179, %172
  %183 = phi i1 [ true, %172 ], [ %181, %179 ]
  %184 = zext i1 %183 to i32
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %5, align 4
  call void @f(i32 noundef %186, i32 noundef 1)
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br label %192

192:                                              ; preds = %189, %182
  %193 = phi i1 [ true, %182 ], [ %191, %189 ]
  %194 = zext i1 %193 to i32
  %195 = load i32, i32* %5, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %5, align 4
  call void @f(i32 noundef %196, i32 noundef 0)
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
