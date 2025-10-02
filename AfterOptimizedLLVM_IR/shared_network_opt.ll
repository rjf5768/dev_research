; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_network.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/ClamAV/shared_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8**, i32, i32, i8** }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @r_gethostbyname(i8* noundef %0, %struct.hostent* noundef %1, i8* noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.hostent* %1, %struct.hostent** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load %struct.hostent*, %struct.hostent** %7, align 8
  %15 = icmp eq %struct.hostent* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 -1, i32* %5, align 4
  br label %29

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.hostent* @gethostbyname(i8* noundef %18)
  store %struct.hostent* %19, %struct.hostent** %10, align 8
  %20 = icmp eq %struct.hostent* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = call i32* @__h_errno_location() #4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %29

24:                                               ; preds = %17
  %25 = load %struct.hostent*, %struct.hostent** %7, align 8
  %26 = bitcast %struct.hostent* %25 to i8*
  %27 = load %struct.hostent*, %struct.hostent** %10, align 8
  %28 = bitcast %struct.hostent* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %28, i64 32, i1 false)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %21, %16
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.hostent* @gethostbyname(i8* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__h_errno_location() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
