; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53688.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr53688.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdr = type { [9 x i8], [8 x i8] }

@p = dso_local global %struct.hdr zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"FOOBARFOO\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"SPEC CPU\00", align 1
@headline = dso_local global [256 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @init() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i32 0, i32 0, i64 0), i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i32 0, i32 1, i64 0), i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @init()
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 0), i8* align 1 getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i32 0, i32 0, i64 0), i64 9, i1 false)
  store i32 9, i32* %3, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 0), i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 32, i64 245, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 10), i8* align 1 getelementptr inbounds (%struct.hdr, %struct.hdr* @p, i32 0, i32 1, i64 0), i64 8, i1 false)
  store i32 18, i32* %3, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 0), i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 32, i64 238, i1 false)
  %14 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @headline, i64 0, i64 10), align 2
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 83
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  call void @abort() #4
  unreachable

18:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
