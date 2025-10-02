; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/large-array.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Integer/large-array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test.array = private unnamed_addr constant [300 x i32] [i32 17, i32 53, i32 523, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49, i32 17, i32 23, i32 123, i32 123, i32 49], align 16
@.str = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"error2\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1000 x i32], align 16
  %4 = alloca [1000 x i8], align 16
  %5 = alloca [300 x i32], align 16
  store i32 %0, i32* %2, align 4
  %6 = bitcast [1000 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 4000, i1 false)
  %7 = bitcast [1000 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 1000, i1 false)
  %8 = bitcast i8* %7 to [1000 x i8]*
  %9 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 0
  store i8 102, i8* %9, align 16
  %10 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 1
  store i8 111, i8* %10, align 1
  %11 = getelementptr inbounds [1000 x i8], [1000 x i8]* %8, i32 0, i32 2
  store i8 111, i8* %11, align 2
  %12 = bitcast [300 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([300 x i32]* @__const.test.array to i8*), i64 1200, i1 false)
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [300 x i32], [300 x i32]* %5, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @test(i32 noundef 1)
  %3 = icmp ne i32 %2, 53
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 @test(i32 noundef 2)
  %8 = icmp ne i32 %7, 523
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %6
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
