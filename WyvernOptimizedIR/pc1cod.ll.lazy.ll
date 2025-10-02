; ModuleID = './pc1cod.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Trimaran/enc-pc1/pc1cod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@cle = dso_local global [32 x i8] zeroinitializer, align 16
@x1a0 = dso_local global [16 x i16] zeroinitializer, align 16
@res = dso_local global i16 0, align 2
@inter = dso_local global i16 0, align 2
@i = dso_local global i16 0, align 2
@x1a2 = dso_local global i16 0, align 2
@dx = dso_local global i16 0, align 2
@ax = dso_local global i16 0, align 2
@cx = dso_local global i16 0, align 2
@bx = dso_local global i16 0, align 2
@tmp = dso_local global i16 0, align 2
@si = dso_local global i16 0, align 2
@.str = private unnamed_addr constant [33 x i8] c"abcdefghijklmnopqrstuvwxyz012345\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"PC1 Cipher 256 bits \0AENCRYPT file IN.BIN to OUT.BIN\0A\00", align 1
@buff = dso_local global [32 x i8] zeroinitializer, align 16
@count = dso_local global i32 0, align 4
@c1 = dso_local global i32 0, align 4
@c = dso_local global i16 0, align 2
@cfc = dso_local global i16 0, align 2
@cfd = dso_local global i16 0, align 2
@compte = dso_local global i16 0, align 2
@d = dso_local global i16 0, align 2
@e = dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@in = dso_local global %struct._IO_FILE* null, align 8
@str = private unnamed_addr constant [52 x i8] c"PC1 Cipher 256 bits \0AENCRYPT file IN.BIN to OUT.BIN\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @assemble() #0 {
  %1 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 0), align 16
  %2 = zext i8 %1 to i16
  %3 = shl nuw i16 %2, 8
  %4 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 1), align 1
  %5 = zext i8 %4 to i16
  %6 = or i16 %3, %5
  store i16 %6, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 0), align 16
  %7 = call i32 @code()
  %8 = load i16, i16* @res, align 2
  store i16 %8, i16* @inter, align 2
  %9 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 0), align 16
  %10 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 2), align 2
  %11 = zext i8 %10 to i16
  %12 = shl nuw i16 %11, 8
  %13 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 3), align 1
  %14 = zext i8 %13 to i16
  %15 = or i16 %12, %14
  %16 = xor i16 %15, %9
  store i16 %16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 1), align 2
  %17 = call i32 @code()
  %18 = load i16, i16* @inter, align 2
  %19 = load i16, i16* @res, align 2
  %20 = xor i16 %18, %19
  store i16 %20, i16* @inter, align 2
  %21 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 1), align 2
  %22 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 4), align 4
  %23 = zext i8 %22 to i16
  %24 = shl nuw i16 %23, 8
  %25 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 5), align 1
  %26 = zext i8 %25 to i16
  %27 = or i16 %24, %26
  %28 = xor i16 %27, %21
  store i16 %28, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 2), align 4
  %29 = call i32 @code()
  %30 = load i16, i16* @inter, align 2
  %31 = load i16, i16* @res, align 2
  %32 = xor i16 %30, %31
  store i16 %32, i16* @inter, align 2
  %33 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 2), align 4
  %34 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 6), align 2
  %35 = zext i8 %34 to i16
  %36 = shl nuw i16 %35, 8
  %37 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 7), align 1
  %38 = zext i8 %37 to i16
  %39 = or i16 %36, %38
  %40 = xor i16 %39, %33
  store i16 %40, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 3), align 2
  %41 = call i32 @code()
  %42 = load i16, i16* @inter, align 2
  %43 = load i16, i16* @res, align 2
  %44 = xor i16 %42, %43
  store i16 %44, i16* @inter, align 2
  %45 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 3), align 2
  %46 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 8), align 8
  %47 = zext i8 %46 to i16
  %48 = shl nuw i16 %47, 8
  %49 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 9), align 1
  %50 = zext i8 %49 to i16
  %51 = or i16 %48, %50
  %52 = xor i16 %51, %45
  store i16 %52, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 4), align 8
  %53 = call i32 @code()
  %54 = load i16, i16* @inter, align 2
  %55 = load i16, i16* @res, align 2
  %56 = xor i16 %54, %55
  store i16 %56, i16* @inter, align 2
  %57 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 4), align 8
  %58 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 10), align 2
  %59 = zext i8 %58 to i16
  %60 = shl nuw i16 %59, 8
  %61 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 11), align 1
  %62 = zext i8 %61 to i16
  %63 = or i16 %60, %62
  %64 = xor i16 %63, %57
  store i16 %64, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 5), align 2
  %65 = call i32 @code()
  %66 = load i16, i16* @inter, align 2
  %67 = load i16, i16* @res, align 2
  %68 = xor i16 %66, %67
  store i16 %68, i16* @inter, align 2
  %69 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 5), align 2
  %70 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 12), align 4
  %71 = zext i8 %70 to i16
  %72 = shl nuw i16 %71, 8
  %73 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 13), align 1
  %74 = zext i8 %73 to i16
  %75 = or i16 %72, %74
  %76 = xor i16 %75, %69
  store i16 %76, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 6), align 4
  %77 = call i32 @code()
  %78 = load i16, i16* @inter, align 2
  %79 = load i16, i16* @res, align 2
  %80 = xor i16 %78, %79
  store i16 %80, i16* @inter, align 2
  %81 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 6), align 4
  %82 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 14), align 2
  %83 = zext i8 %82 to i16
  %84 = shl nuw i16 %83, 8
  %85 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 15), align 1
  %86 = zext i8 %85 to i16
  %87 = or i16 %84, %86
  %88 = xor i16 %87, %81
  store i16 %88, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 7), align 2
  %89 = call i32 @code()
  %90 = load i16, i16* @inter, align 2
  %91 = load i16, i16* @res, align 2
  %92 = xor i16 %90, %91
  store i16 %92, i16* @inter, align 2
  %93 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 7), align 2
  %94 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 16), align 16
  %95 = zext i8 %94 to i16
  %96 = shl nuw i16 %95, 8
  %97 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 17), align 1
  %98 = zext i8 %97 to i16
  %99 = or i16 %96, %98
  %100 = xor i16 %99, %93
  store i16 %100, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 8), align 16
  %101 = call i32 @code()
  %102 = load i16, i16* @inter, align 2
  %103 = load i16, i16* @res, align 2
  %104 = xor i16 %102, %103
  store i16 %104, i16* @inter, align 2
  %105 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 8), align 16
  %106 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 18), align 2
  %107 = zext i8 %106 to i16
  %108 = shl nuw i16 %107, 8
  %109 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 19), align 1
  %110 = zext i8 %109 to i16
  %111 = or i16 %108, %110
  %112 = xor i16 %111, %105
  store i16 %112, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 9), align 2
  %113 = call i32 @code()
  %114 = load i16, i16* @inter, align 2
  %115 = load i16, i16* @res, align 2
  %116 = xor i16 %114, %115
  store i16 %116, i16* @inter, align 2
  %117 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 9), align 2
  %118 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 20), align 4
  %119 = zext i8 %118 to i16
  %120 = shl nuw i16 %119, 8
  %121 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 21), align 1
  %122 = zext i8 %121 to i16
  %123 = or i16 %120, %122
  %124 = xor i16 %123, %117
  store i16 %124, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 10), align 4
  %125 = call i32 @code()
  %126 = load i16, i16* @inter, align 2
  %127 = load i16, i16* @res, align 2
  %128 = xor i16 %126, %127
  store i16 %128, i16* @inter, align 2
  %129 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 10), align 4
  %130 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 22), align 2
  %131 = zext i8 %130 to i16
  %132 = shl nuw i16 %131, 8
  %133 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 23), align 1
  %134 = zext i8 %133 to i16
  %135 = or i16 %132, %134
  %136 = xor i16 %135, %129
  store i16 %136, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 11), align 2
  %137 = call i32 @code()
  %138 = load i16, i16* @inter, align 2
  %139 = load i16, i16* @res, align 2
  %140 = xor i16 %138, %139
  store i16 %140, i16* @inter, align 2
  %141 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 11), align 2
  %142 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 24), align 8
  %143 = zext i8 %142 to i16
  %144 = shl nuw i16 %143, 8
  %145 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 25), align 1
  %146 = zext i8 %145 to i16
  %147 = or i16 %144, %146
  %148 = xor i16 %147, %141
  store i16 %148, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 12), align 8
  %149 = call i32 @code()
  %150 = load i16, i16* @inter, align 2
  %151 = load i16, i16* @res, align 2
  %152 = xor i16 %150, %151
  store i16 %152, i16* @inter, align 2
  %153 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 12), align 8
  %154 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 26), align 2
  %155 = zext i8 %154 to i16
  %156 = shl nuw i16 %155, 8
  %157 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 27), align 1
  %158 = zext i8 %157 to i16
  %159 = or i16 %156, %158
  %160 = xor i16 %159, %153
  store i16 %160, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 13), align 2
  %161 = call i32 @code()
  %162 = load i16, i16* @inter, align 2
  %163 = load i16, i16* @res, align 2
  %164 = xor i16 %162, %163
  store i16 %164, i16* @inter, align 2
  %165 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 13), align 2
  %166 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 28), align 4
  %167 = zext i8 %166 to i16
  %168 = shl nuw i16 %167, 8
  %169 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 29), align 1
  %170 = zext i8 %169 to i16
  %171 = or i16 %168, %170
  %172 = xor i16 %171, %165
  store i16 %172, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 14), align 4
  %173 = call i32 @code()
  %174 = load i16, i16* @inter, align 2
  %175 = load i16, i16* @res, align 2
  %176 = xor i16 %174, %175
  store i16 %176, i16* @inter, align 2
  %177 = load i16, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 14), align 4
  %178 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 30), align 2
  %179 = zext i8 %178 to i16
  %180 = shl nuw i16 %179, 8
  %181 = load i8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 31), align 1
  %182 = zext i8 %181 to i16
  %183 = or i16 %180, %182
  %184 = xor i16 %183, %177
  store i16 %184, i16* getelementptr inbounds ([16 x i16], [16 x i16]* @x1a0, i64 0, i64 15), align 2
  %185 = call i32 @code()
  %186 = load i16, i16* @inter, align 2
  %187 = load i16, i16* @res, align 2
  %188 = xor i16 %186, %187
  store i16 %188, i16* @inter, align 2
  store i16 0, i16* @i, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @code() #0 {
  %1 = load i16, i16* @x1a2, align 2
  %2 = load i16, i16* @i, align 2
  %3 = add i16 %1, %2
  store i16 %3, i16* @dx, align 2
  %4 = zext i16 %2 to i64
  %5 = getelementptr inbounds [16 x i16], [16 x i16]* @x1a0, i64 0, i64 %4
  %6 = load i16, i16* %5, align 2
  store i16 %6, i16* @ax, align 2
  store i16 346, i16* @cx, align 2
  store i16 20021, i16* @bx, align 2
  store i16 %6, i16* @tmp, align 2
  %7 = load i16, i16* @si, align 2
  store i16 %7, i16* @ax, align 2
  store i16 %6, i16* @si, align 2
  store i16 %7, i16* @tmp, align 2
  %8 = load i16, i16* @dx, align 2
  store i16 %8, i16* @ax, align 2
  store i16 %7, i16* @dx, align 2
  %.not = icmp eq i16 %8, 0
  br i1 %.not, label %13, label %9

9:                                                ; preds = %0
  %10 = load i16, i16* @ax, align 2
  %11 = load i16, i16* @bx, align 2
  %12 = mul i16 %10, %11
  store i16 %12, i16* @ax, align 2
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i16, i16* @ax, align 2
  store i16 %14, i16* @tmp, align 2
  %15 = load i16, i16* @cx, align 2
  store i16 %15, i16* @ax, align 2
  store i16 %14, i16* @cx, align 2
  %.not1 = icmp eq i16 %15, 0
  br i1 %.not1, label %22, label %16

16:                                               ; preds = %13
  %17 = load i16, i16* @ax, align 2
  %18 = load i16, i16* @si, align 2
  %19 = mul i16 %17, %18
  store i16 %19, i16* @ax, align 2
  %20 = load i16, i16* @cx, align 2
  %21 = add i16 %19, %20
  store i16 %21, i16* @cx, align 2
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i16, i16* @ax, align 2
  store i16 %23, i16* @tmp, align 2
  %24 = load i16, i16* @si, align 2
  store i16 %24, i16* @ax, align 2
  store i16 %23, i16* @si, align 2
  %25 = load i16, i16* @bx, align 2
  %26 = mul i16 %24, %25
  store i16 %26, i16* @ax, align 2
  %27 = load i16, i16* @cx, align 2
  %28 = load i16, i16* @dx, align 2
  %29 = add i16 %27, %28
  store i16 %29, i16* @dx, align 2
  %30 = add i16 %26, 1
  store i16 %30, i16* @ax, align 2
  store i16 %29, i16* @x1a2, align 2
  %31 = load i16, i16* @i, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds [16 x i16], [16 x i16]* @x1a0, i64 0, i64 %32
  store i16 %30, i16* %33, align 2
  %34 = load i16, i16* @dx, align 2
  %35 = xor i16 %30, %34
  store i16 %35, i16* @res, align 2
  %36 = load i16, i16* @i, align 2
  %37 = add i16 %36, 1
  store i16 %37, i16* @i, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @my_rand_r(i32* nocapture noundef %0) #0 {
  %2 = load i32, i32* %0, align 4
  %3 = mul i32 %2, 1664525
  %4 = add i32 %3, 1013904223
  store i32 %4, i32* %0, align 4
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 32767
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8*, i8** %1, i64 1
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @atoi(i8* noundef %7) #6
  br label %9

9:                                                ; preds = %5, %2
  %.01 = phi i32 [ %8, %5 ], [ 20000, %2 ]
  store i16 0, i16* @si, align 2
  store i16 0, i16* @x1a2, align 2
  store i16 0, i16* @i, align 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) getelementptr inbounds ([32 x i8], [32 x i8]* @cle, i64 0, i64 0), i8* noundef nonnull align 1 dereferenceable(32) getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 32, i1 false)
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @str, i64 0, i64 0))
  store i8 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i64 0, i64 1), align 1
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i64 0, i64 0)) #6
  %11 = icmp ugt i64 %10, 32
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %16

13:                                               ; preds = %9
  %14 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @buff, i64 0, i64 0)) #6
  %15 = trunc i64 %14 to i32
  br label %16

16:                                               ; preds = %13, %12
  %storemerge = phi i32 [ %15, %13 ], [ 32, %12 ]
  store i32 %storemerge, i32* @count, align 4
  br label %17

17:                                               ; preds = %27, %16
  %storemerge2 = phi i32 [ 0, %16 ], [ %29, %27 ]
  store i32 %storemerge2, i32* @c1, align 4
  %18 = load i32, i32* @count, align 4
  %19 = icmp slt i32 %storemerge2, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* @c1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* @buff, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i64 0, i64 %25
  store i8 %24, i8* %26, align 1
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @c1, align 4
  %29 = add nsw i32 %28, 1
  br label %17, !llvm.loop !4

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %73, %30
  %.1 = phi i32 [ %.01, %30 ], [ %32, %73 ]
  %.0 = phi i32 [ 0, %30 ], [ %64, %73 ]
  %32 = add nsw i32 %.1, -1
  %.not = icmp eq i32 %32, 0
  br i1 %.not, label %74, label %33

33:                                               ; preds = %31
  %34 = call i32 @my_rand_r(i32* noundef nonnull %3)
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* @c, align 2
  %36 = call i32 @assemble()
  %37 = load i16, i16* @inter, align 2
  %38 = lshr i16 %37, 8
  store i16 %38, i16* @cfc, align 2
  %39 = and i16 %37, 255
  store i16 %39, i16* @cfd, align 2
  br label %40

40:                                               ; preds = %53, %33
  %storemerge3 = phi i16 [ 0, %33 ], [ %55, %53 ]
  store i16 %storemerge3, i16* @compte, align 2
  %41 = icmp ult i16 %storemerge3, 32
  br i1 %41, label %42, label %56

42:                                               ; preds = %40
  %43 = load i16, i16* @compte, align 2
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i16, i16* @c, align 2
  %48 = trunc i16 %47 to i8
  %49 = xor i8 %46, %48
  %50 = load i16, i16* @compte, align 2
  %51 = zext i16 %50 to i64
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* @cle, i64 0, i64 %51
  store i8 %49, i8* %52, align 1
  br label %53

53:                                               ; preds = %42
  %54 = load i16, i16* @compte, align 2
  %55 = add i16 %54, 1
  br label %40, !llvm.loop !6

56:                                               ; preds = %40
  %57 = load i16, i16* @c, align 2
  %58 = load i16, i16* @cfc, align 2
  %59 = load i16, i16* @cfd, align 2
  %60 = xor i16 %58, %59
  %61 = xor i16 %57, %60
  store i16 %61, i16* @c, align 2
  %62 = ashr i16 %61, 4
  store i16 %62, i16* @d, align 2
  %63 = and i16 %61, 15
  store i16 %63, i16* @e, align 2
  %64 = add nuw nsw i32 %.0, 1
  %65 = and i32 %64, 2047
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load i16, i16* @d, align 2
  %69 = sext i16 %68 to i32
  %70 = load i16, i16* @e, align 2
  %71 = sext i16 %70 to i32
  %72 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 noundef %69, i32 noundef %71) #7
  br label %73

73:                                               ; preds = %67, %56
  br label %31, !llvm.loop !7

74:                                               ; preds = %31
  %putchar = call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @printf(i8* noundef, ...) #4

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
