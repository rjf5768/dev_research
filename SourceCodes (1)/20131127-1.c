; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20131127-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20131127-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type <{ i32, i32, i32, i16 }>

@a = dso_local global i16 1, align 2
@b = dso_local global %struct.S0 <{ i32 1, i32 0, i32 0, i16 0 }>, align 1
@c = dso_local global %struct.S0 zeroinitializer, align 1
@d = dso_local global %struct.S0 zeroinitializer, align 1
@e = dso_local global %struct.S0 zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local { i64, i48 } @fn1() #0 {
  %1 = alloca %struct.S0, align 1
  %2 = alloca { i64, i48 }, align 8
  %3 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 bitcast (%struct.S0* @c to i8*), i64 14, i1 false)
  %4 = bitcast { i64, i48 }* %2 to i8*
  %5 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 1 %5, i64 14, i1 false)
  %6 = load { i64, i48 }, { i64, i48 }* %2, align 8
  ret { i64, i48 } %6
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn2() #0 {
  %1 = alloca %struct.S0, align 1
  %2 = alloca { i64, i48 }, align 8
  %3 = call { i64, i48 } @fn1()
  store { i64, i48 } %3, { i64, i48 }* %2, align 8
  %4 = bitcast %struct.S0* %1 to i8*
  %5 = bitcast { i64, i48 }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 8 %5, i64 14, i1 false)
  %6 = bitcast %struct.S0* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 bitcast (%struct.S0* @b to i8*), i8* align 1 %6, i64 14, i1 false)
  store i16 0, i16* @a, align 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 bitcast (%struct.S0* @d to i8*), i8* align 1 bitcast (%struct.S0* @e to i8*), i64 14, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @fn2()
  %2 = load i16, i16* @a, align 2
  %3 = sext i16 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #3
  unreachable

6:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

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
