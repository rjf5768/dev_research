; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68143_1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr68143_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stuff = type { i32, i32, i32, i32, i32, i8*, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(%struct.stuff* noundef %0) #0 {
  %2 = alloca %struct.stuff*, align 8
  store %struct.stuff* %0, %struct.stuff** %2, align 8
  %3 = load %struct.stuff*, %struct.stuff** %2, align 8
  %4 = getelementptr inbounds %struct.stuff, %struct.stuff* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #3
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stuff, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = bitcast %struct.stuff* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = getelementptr inbounds %struct.stuff, %struct.stuff* %6, i32 0, i32 0
  store i32 100, i32* %8, align 8
  %9 = getelementptr inbounds %struct.stuff, %struct.stuff* %6, i32 0, i32 3
  store i32 100, i32* %9, align 4
  %10 = getelementptr inbounds %struct.stuff, %struct.stuff* %6, i32 0, i32 6
  store i32 2, i32* %10, align 8
  call void @bar(%struct.stuff* noundef %6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
