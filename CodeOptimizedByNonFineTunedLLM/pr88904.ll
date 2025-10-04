; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88904.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88904.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i8, [3 x i8], i8 }

@v = dso_local global i32 0, align 4
@__const.foo.result = private unnamed_addr constant %struct.S { i32 0, i8 0, [3 x i8] undef, i8 1 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"ret.M2 == 0\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr88904.c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ret.M3 == 1\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load volatile i32, i32* @v, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  call void @abort() #3
  unreachable

10:                                               ; preds = %3
  %11 = load i8*, i8** %4, align 8
  call void asm sideeffect "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i8** elementtype(i8*) %4, i8* %11) #4, !srcloc !4
  %12 = load i8*, i8** %5, align 8
  call void asm sideeffect "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i8** elementtype(i8*) %5, i8* %12) #4, !srcloc !5
  %13 = load i32, i32* %6, align 4
  call void asm sideeffect "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* elementtype(i32) %6, i32 %13) #4, !srcloc !6
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @foo() #0 {
  %1 = alloca %struct.S, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.S* @__const.foo.result to i8*), i64 12, i1 false)
  %4 = bitcast { i64, i32 }* %2 to i8*
  %5 = bitcast %struct.S* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 4 %5, i64 12, i1 false)
  %6 = load { i64, i32 }, { i64, i32 }* %2, align 8
  ret { i64, i32 } %6
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 4
  %3 = alloca { i64, i32 }, align 8
  store i32 0, i32* %1, align 4
  %4 = call { i64, i32 } @foo()
  store { i64, i32 } %4, { i64, i32 }* %3, align 8
  %5 = bitcast %struct.S* %2 to i8*
  %6 = bitcast { i64, i32 }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 8 %6, i64 12, i1 false)
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 1
  %8 = load i8, i8* %7, align 4
  %9 = and i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %14

13:                                               ; preds = %0
  call void @bar(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 35)
  br label %14

14:                                               ; preds = %13, %12
  %15 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %16 = load i8, i8* %15, align 4
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  call void @bar(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 noundef 36)
  br label %22

22:                                               ; preds = %21, %20
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 174}
!5 = !{i64 206}
!6 = !{i64 238}
