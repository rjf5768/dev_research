; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020206-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020206-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i32 } @bar() #0 {
  %1 = alloca %struct.A, align 4
  %2 = alloca { i64, i32 }, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 0
  store i32 176, i32* %3, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 1
  store i32 52, i32* %4, align 4
  %5 = getelementptr inbounds %struct.A, %struct.A* %1, i32 0, i32 2
  store i32 31, i32* %5, align 4
  %6 = bitcast { i64, i32 }* %2 to i8*
  %7 = bitcast %struct.A* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 4 %7, i64 12, i1 false)
  %8 = load { i64, i32 }, { i64, i32 }* %2, align 8
  ret { i64, i32 } %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @baz(%struct.A* noundef %0) #0 {
  %2 = alloca %struct.A*, align 8
  store %struct.A* %0, %struct.A** %2, align 8
  %3 = load %struct.A*, %struct.A** %2, align 8
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 176
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load %struct.A*, %struct.A** %2, align 8
  %9 = getelementptr inbounds %struct.A, %struct.A* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 52
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.A*, %struct.A** %2, align 8
  %14 = getelementptr inbounds %struct.A, %struct.A* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 31
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %7, %1
  call void @abort() #3
  unreachable

18:                                               ; preds = %12
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca %struct.A, align 4
  %4 = alloca { i64, i32 }, align 8
  store i32 0, i32* %1, align 4
  %5 = call { i64, i32 } @bar()
  store { i64, i32 } %5, { i64, i32 }* %4, align 8
  %6 = bitcast %struct.A* %3 to i8*
  %7 = bitcast { i64, i32 }* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 8 %7, i64 12, i1 false)
  %8 = bitcast %struct.A* %2 to i8*
  %9 = bitcast %struct.A* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 12, i1 false)
  call void @baz(%struct.A* noundef %2)
  call void @exit(i32 noundef 0) #3
  unreachable
}

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
