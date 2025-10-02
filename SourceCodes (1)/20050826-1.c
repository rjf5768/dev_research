; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050826-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050826-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { [1 x i8], [5 x i8], [1 x i8], [2041 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"\01HELLO\01\00", align 1
@a = dso_local global %struct.A zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"HELLO\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.A* noundef %0) #0 {
  %2 = alloca %struct.A*, align 8
  %3 = alloca i64, align 8
  store %struct.A* %0, %struct.A** %2, align 8
  %4 = load %struct.A*, %struct.A** %2, align 8
  %5 = bitcast %struct.A* %4 to i8*
  %6 = call i32 @memcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 noundef 8)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @abort() #5
  unreachable

9:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %10

10:                                               ; preds = %22, %9
  %11 = load i64, i64* %3, align 8
  %12 = icmp ult i64 %11, 2041
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.A*, %struct.A** %2, align 8
  %15 = getelementptr inbounds %struct.A, %struct.A* %14, i32 0, i32 3
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds [2041 x i8], [2041 x i8]* %15, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  call void @abort() #5
  unreachable

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %3, align 8
  br label %10, !llvm.loop !4

25:                                               ; preds = %10
  ret void
}

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0, i32 0), i8 0, i64 2048, i1 false)
  store i8 1, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 0, i64 0), align 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 1, i64 0), i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 6, i1 false)
  store i8 1, i8* getelementptr inbounds (%struct.A, %struct.A* @a, i32 0, i32 2, i64 0), align 1
  call void @bar(%struct.A* noundef @a)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
