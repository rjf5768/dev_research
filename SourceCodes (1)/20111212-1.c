; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20111212-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20111212-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { %struct.anon }
%struct.anon = type { i32 }
%union.anon = type { i32, [4 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @frob_entry(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.event, align 1
  store i8* %0, i8** %2, align 8
  %4 = bitcast %struct.event* %3 to i8*
  %5 = load i8*, i8** %2, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %5, i64 4, i1 false)
  %6 = getelementptr inbounds %struct.event, %struct.event* %3, i32 0, i32 0
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 1
  %9 = icmp ult i32 %8, 64
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.event, %struct.event* %3, i32 0, i32 0
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 1
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast %struct.event* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 %14, i64 4, i1 false)
  br label %15

15:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.anon, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast %union.anon* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 8, i1 false)
  %4 = bitcast %union.anon* %2 to [5 x i8]*
  %5 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 1
  call void @frob_entry(i8* noundef %5)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
