; ModuleID = './string-opt-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/string-opt-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 6, align 4
@y = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [9 x i8] c"hi world\00", align 1
@bar = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"lo world\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ello world\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ello \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" oo\00\00\00\00\00\00\00\00 \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"hello\00\00\00 \00", align 1
@buf = dso_local global [64 x i8] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"!!!\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"!!!--------\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"---\00\00\00\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"-\00\00\00\00\00\00\00\00\00\00", align 1
@str = private unnamed_addr constant [9 x i8] c"hello\00\00\00\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = load i8*, i8** @bar, align 8
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #7
  %.not = icmp eq i64 %3, 8
  br i1 %.not, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #8
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %0
  %6 = load i8*, i8** @bar, align 8
  %7 = load i32, i32* @x, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @x, align 4
  %9 = and i32 %8, 2
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %11) #7
  %.not1 = icmp eq i64 %12, 6
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %5
  call void @abort() #8
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %5
  %15 = load i32, i32* @x, align 4
  %.not2 = icmp eq i32 %15, 7
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #8
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = load i32, i32* @x, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @x, align 4
  br i1 false, label %20, label %21

20:                                               ; preds = %17
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %17
  %22 = load i32, i32* @x, align 4
  %.not3 = icmp eq i32 %22, 8
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #8
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  %25 = load i32, i32* @x, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @x, align 4
  %27 = and i32 %26, 1
  %.not4.not = icmp eq i32 %27, 0
  br i1 %.not4.not, label %28, label %29

28:                                               ; preds = %24
  call void @abort() #8
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %24
  %30 = load i32, i32* @x, align 4
  %.not5 = icmp eq i32 %30, 9
  br i1 %.not5, label %32, label %31

31:                                               ; preds = %29
  call void @abort() #8
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %29
  %33 = load i32, i32* @x, align 4
  %34 = add nsw i32 %33, -6
  store i32 %34, i32* @x, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* @.str.1, i64 0, i64 %35
  %37 = call i32 @strcmp(i8* noundef nonnull %36, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #7
  %.not6 = icmp eq i32 %37, 0
  br i1 %.not6, label %39, label %38

38:                                               ; preds = %32
  call void @abort() #8
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %32
  %40 = load i32, i32* @x, align 4
  %.not7 = icmp eq i32 %40, 3
  br i1 %.not7, label %42, label %41

41:                                               ; preds = %39
  call void @abort() #8
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  %43 = load i8*, i8** @bar, align 8
  %44 = call i32 @strcmp(i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %43) #7
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void @abort() #8
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %42
  %48 = load i8*, i8** @bar, align 8
  %49 = load i32, i32* @x, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @x, align 4
  %51 = and i32 %49, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = call i32 @strcmp(i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %53) #7
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  call void @abort() #8
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %47
  %58 = load i32, i32* @x, align 4
  %.not8 = icmp eq i32 %58, 4
  br i1 %.not8, label %60, label %59

59:                                               ; preds = %57
  call void @abort() #8
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  %61 = load i32, i32* @x, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @x, align 4
  %63 = and i32 %61, 7
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [12 x i8], [12 x i8]* @.str.1, i64 0, i64 %64
  %66 = call i8* @strchr(i8* noundef nonnull %65, i32 noundef 108) #7
  %.not9 = icmp eq i8* %66, getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 9)
  br i1 %.not9, label %68, label %67

67:                                               ; preds = %60
  call void @abort() #8
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %60
  %69 = load i32, i32* @x, align 4
  %.not10 = icmp eq i32 %69, 5
  br i1 %.not10, label %71, label %70

70:                                               ; preds = %68
  call void @abort() #8
  br label %UnifiedUnreachableBlock

71:                                               ; preds = %68
  %72 = load i8*, i8** @bar, align 8
  %73 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %72, i32 noundef 111) #7
  %74 = load i8*, i8** @bar, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %.not11 = icmp eq i8* %73, %75
  br i1 %.not11, label %77, label %76

76:                                               ; preds = %71
  call void @abort() #8
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %71
  %78 = load i8*, i8** @bar, align 8
  %strlen = call i64 @strlen(i8* nonnull dereferenceable(1) %78)
  %strchr = getelementptr i8, i8* %78, i64 %strlen
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %.not12 = icmp eq i8* %strchr, %79
  br i1 %.not12, label %81, label %80

80:                                               ; preds = %77
  call void @abort() #8
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %77
  %82 = load i8*, i8** @bar, align 8
  %83 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %82, i32 noundef 120) #7
  %.not13 = icmp eq i8* %83, null
  br i1 %.not13, label %85, label %84

84:                                               ; preds = %81
  call void @abort() #8
  br label %UnifiedUnreachableBlock

85:                                               ; preds = %81
  %86 = load i8*, i8** @bar, align 8
  %87 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %86, i32 noundef 111) #7
  %88 = load i8*, i8** @bar, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  %.not14 = icmp eq i8* %87, %89
  br i1 %.not14, label %91, label %90

90:                                               ; preds = %85
  call void @abort() #8
  br label %UnifiedUnreachableBlock

91:                                               ; preds = %85
  %92 = load i32, i32* @x, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @x, align 4
  %94 = and i32 %92, 1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [12 x i8], [12 x i8]* @.str.1, i64 0, i64 %95
  %97 = load i32, i32* @y, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* @y, align 4
  %99 = and i32 %98, 1
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [11 x i8], [11 x i8]* @.str.3, i64 0, i64 %100
  %102 = call i32 @strcmp(i8* noundef nonnull %96, i8* noundef nonnull %101) #7
  %.not15 = icmp eq i32 %102, 0
  br i1 %.not15, label %104, label %103

103:                                              ; preds = %91
  call void @abort() #8
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %91
  %105 = load i32, i32* @x, align 4
  %.not16 = icmp eq i32 %105, 6
  br i1 %.not16, label %106, label %108

106:                                              ; preds = %104
  %107 = load i32, i32* @y, align 4
  %.not17 = icmp eq i32 %107, 0
  br i1 %.not17, label %109, label %108

108:                                              ; preds = %106, %104
  call void @abort() #8
  br label %UnifiedUnreachableBlock

109:                                              ; preds = %106
  %110 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 5
  store i8 32, i8* %110, align 1
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 6
  store i8 0, i8* %111, align 2
  store i32 5, i32* @x, align 4
  store i32 1, i32* @y, align 4
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  store i32 6, i32* @x, align 4
  %113 = bitcast i8* %112 to i32*
  store i32 1869376613, i32* %113, align 1
  br i1 false, label %118, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @x, align 4
  %.not18 = icmp eq i32 %115, 6
  br i1 %.not18, label %116, label %118

116:                                              ; preds = %114
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %117, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 6)
  %.not19 = icmp eq i32 %bcmp, 0
  br i1 %.not19, label %119, label %118

118:                                              ; preds = %116, %114, %109
  call void @abort() #8
  br label %UnifiedUnreachableBlock

119:                                              ; preds = %116
  %120 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %120, i8 32, i64 64, i1 false)
  %121 = load i32, i32* @x, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* @x, align 4
  %123 = and i32 %122, 1
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 %124
  %126 = load i32, i32* @y, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @y, align 4
  %128 = and i32 %126, 3
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.5, i64 0, i64 %129
  %131 = call i8* @strncpy(i8* noundef nonnull %125, i8* noundef nonnull %130, i64 noundef 10) #7
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 1
  %.not20 = icmp eq i8* %131, %132
  br i1 %.not20, label %133, label %139

133:                                              ; preds = %119
  %134 = load i32, i32* @x, align 4
  %.not21 = icmp eq i32 %134, 7
  br i1 %.not21, label %135, label %139

135:                                              ; preds = %133
  %136 = load i32, i32* @y, align 4
  %.not22 = icmp eq i32 %136, 2
  br i1 %.not22, label %137, label %139

137:                                              ; preds = %135
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp23 = call i32 @bcmp(i8* noundef nonnull dereferenceable(12) %138, i8* noundef nonnull dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 12)
  %.not24 = icmp eq i32 %bcmp23, 0
  br i1 %.not24, label %140, label %139

139:                                              ; preds = %137, %135, %133, %119
  call void @abort() #8
  br label %UnifiedUnreachableBlock

140:                                              ; preds = %137
  %141 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) %141, i8 32, i64 64, i1 false)
  %142 = bitcast [64 x i8]* %1 to i64*
  store i64 478560413032, i64* %142, align 16
  br i1 false, label %145, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %bcmp25 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %144, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i64 9)
  %.not26 = icmp eq i32 %bcmp25, 0
  br i1 %.not26, label %146, label %145

145:                                              ; preds = %143, %140
  call void @abort() #8
  br label %UnifiedUnreachableBlock

146:                                              ; preds = %143
  store i32 33, i32* @x, align 4
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(64) getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8 32, i64 64, i1 false)
  store i32 34, i32* @x, align 4
  %147 = load i32, i32* @y, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* @y, align 4
  %149 = sext i32 %148 to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8 33, i64 %149, i1 false)
  br i1 false, label %155, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* @x, align 4
  %.not27 = icmp eq i32 %151, 34
  br i1 %.not27, label %152, label %155

152:                                              ; preds = %150
  %153 = load i32, i32* @y, align 4
  %.not28 = icmp eq i32 %153, 3
  br i1 %.not28, label %154, label %155

154:                                              ; preds = %152
  %bcmp29 = call i32 @bcmp(i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i64 3)
  %.not30 = icmp eq i32 %bcmp29, 0
  br i1 %.not30, label %156, label %155

155:                                              ; preds = %154, %152, %150, %146
  call void @abort() #8
  br label %UnifiedUnreachableBlock

156:                                              ; preds = %154
  %157 = load i32, i32* @y, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @y, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* @buf, i64 0, i64 %159
  %161 = bitcast i8* %160 to i64*
  store i64 3255307777713450285, i64* %161, align 1
  %.not31 = icmp eq i32 %157, 3
  br i1 %.not31, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* @y, align 4
  %.not32 = icmp eq i32 %163, 4
  br i1 %.not32, label %164, label %165

164:                                              ; preds = %162
  %bcmp33 = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 0), i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 11)
  %.not34 = icmp eq i32 %bcmp33, 0
  br i1 %.not34, label %166, label %165

165:                                              ; preds = %164, %162, %156
  call void @abort() #8
  br label %UnifiedUnreachableBlock

166:                                              ; preds = %164
  store i32 11, i32* @x, align 4
  %167 = load i32, i32* @y, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @y, align 4
  %169 = sext i32 %167 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 11), i8 0, i64 %169, i1 false)
  br i1 false, label %175, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* @x, align 4
  %.not35 = icmp eq i32 %171, 11
  br i1 %.not35, label %172, label %175

172:                                              ; preds = %170
  %173 = load i32, i32* @y, align 4
  %.not36 = icmp eq i32 %173, 5
  br i1 %.not36, label %174, label %175

174:                                              ; preds = %172
  %bcmp37 = call i32 @bcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 8), i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i64 7)
  %.not38 = icmp eq i32 %bcmp37, 0
  br i1 %.not38, label %176, label %175

175:                                              ; preds = %174, %172, %170, %166
  call void @abort() #8
  br label %UnifiedUnreachableBlock

176:                                              ; preds = %174
  %177 = load i32, i32* @x, align 4
  %178 = add nsw i32 %177, 4
  store i32 %178, i32* @x, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [64 x i8], [64 x i8]* @buf, i64 0, i64 %179
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(6) %180, i8 0, i64 6, i1 false)
  %.not39 = icmp eq i32 %178, 15
  br i1 %.not39, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @x, align 4
  %.not40 = icmp eq i32 %182, 15
  br i1 %.not40, label %183, label %184

183:                                              ; preds = %181
  %bcmp41 = call i32 @bcmp(i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([64 x i8], [64 x i8]* @buf, i64 0, i64 10), i8* noundef nonnull dereferenceable(11) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i64 11)
  %.not42 = icmp eq i32 %bcmp41, 0
  br i1 %.not42, label %185, label %184

184:                                              ; preds = %183, %181, %176
  call void @abort() #8
  br label %UnifiedUnreachableBlock

185:                                              ; preds = %183
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %184, %175, %165, %155, %145, %139, %118, %108, %103, %90, %84, %80, %76, %70, %67, %59, %56, %46, %41, %38, %31, %28, %23, %20, %16, %13, %4
  unreachable
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #3

declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i32 @memcmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
