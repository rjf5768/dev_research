; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/bitfld-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64 }

@__const.main.s = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 41, i8 0, i8 0, i8 0, i8 0, i8 12, i8 0, i8 0 }, align 8
@__const.main.t = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8 } { i8 9, i8 0, i8 0, i8 0, i8 0, i8 12, i8 0, i8 0 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @g(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @abort() #4
  unreachable

9:                                                ; preds = %2
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(i64 %0, i64 noundef %1) #0 {
  %3 = alloca %struct.s, align 8
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %4, align 8
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !5
  %6 = bitcast %struct.s* %3 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = lshr i64 %7, 2
  %9 = and i64 %8, 1099511627775
  %10 = sub i64 %9, 8
  %11 = add i64 %10, 8
  %12 = load i64, i64* %4, align 8
  call void @g(i64 noundef %11, i64 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.s, align 8
  %3 = alloca %struct.s, align 8
  store i32 0, i32* %1, align 4
  %4 = bitcast %struct.s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.s, i32 0, i32 0), i64 8, i1 false)
  %5 = bitcast %struct.s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.t, i32 0, i32 0), i64 8, i1 false)
  %6 = getelementptr inbounds %struct.s, %struct.s* %2, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  call void @f(i64 %7, i64 noundef 10)
  %8 = getelementptr inbounds %struct.s, %struct.s* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  call void @f(i64 %9, i64 noundef 1099511627778)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 273}
!5 = !{i64 387}
