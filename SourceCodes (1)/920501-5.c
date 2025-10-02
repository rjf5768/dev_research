; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/920501-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.x.j = private unnamed_addr constant [3 x i8*] [i8* blockaddress(@x, %10), i8* blockaddress(@x, %11), i8* blockaddress(@x, %12)], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @x(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [3 x i8*], align 16
  store i32 %0, i32* %3, align 4
  %5 = bitcast [3 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i8*]* @__const.x.j to i8*), i64 24, i1 false)
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* %4, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  br label %15

10:                                               ; preds = %15
  store i32 2, i32* %2, align 4
  br label %13

11:                                               ; preds = %15
  store i32 3, i32* %2, align 4
  br label %13

12:                                               ; preds = %15
  store i32 5, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %11, %10
  %14 = load i32, i32* %2, align 4
  ret i32 %14

15:                                               ; preds = %1
  %16 = phi i8* [ %9, %1 ]
  indirectbr i8* %16, [label %10, label %11, label %12]
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @x(i32 noundef 0)
  %3 = icmp ne i32 %2, 2
  br i1 %3, label %10, label %4

4:                                                ; preds = %0
  %5 = call i32 @x(i32 noundef 1)
  %6 = icmp ne i32 %5, 3
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = call i32 @x(i32 noundef 2)
  %9 = icmp ne i32 %8, 5
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %4, %0
  call void @abort() #3
  unreachable

11:                                               ; preds = %7
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
