; ModuleID = './alias.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-smail/alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_node = type { i8*, %struct.alias_node*, %struct.alias_node* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@nargc = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c":include:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".forward\00", align 1
@alias.t_dom = internal global [512 x i8] zeroinitializer, align 16
@alias.t_unam = internal global [512 x i8] zeroinitializer, align 16
@nargv = internal global [500 x i8*] zeroinitializer, align 16
@v_search.loaded = internal global i32 0, align 4
@aliases = internal global %struct.alias_node { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), %struct.alias_node* null, %struct.alias_node* null }, align 8
@aliasfile = external dso_local global i8*, align 8
@debug = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"load_alias open('%s') failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"load_alias '%s' includes file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"load_alias for '%s' failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @alias(i32* nocapture noundef %0, i8** nocapture noundef readonly %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca %struct.alias_node, align 8
  %6 = alloca %struct.alias_node, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca %struct.stat, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca [512 x i8], align 16
  %11 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %5, i64 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %11, align 8
  %12 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %6, i64 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %12, align 8
  br label %13

13:                                               ; preds = %20, %2
  %.02 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %14 = load i32, i32* %0, align 4
  %15 = icmp slt i32 %.02, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds i8*, i8** %1, i64 %17
  %19 = load i8*, i8** %18, align 8
  call void @add_horz(%struct.alias_node* noundef nonnull %5, i8* noundef %19)
  br label %20

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %.02, 1
  br label %13, !llvm.loop !4

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %.backedge, %22
  %.05 = phi %struct.alias_node* [ undef, %22 ], [ %.16, %.backedge ]
  %24 = load i32, i32* @nargc, align 4
  %25 = icmp slt i32 %24, 500
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = call %struct.alias_node* @pop(%struct.alias_node* noundef nonnull %5)
  %28 = icmp ne %struct.alias_node* %27, null
  br label %29

29:                                               ; preds = %26, %23
  %.16 = phi %struct.alias_node* [ %27, %26 ], [ %.05, %23 ]
  %30 = phi i1 [ %28, %26 ], [ false, %23 ]
  br i1 %30, label %31, label %204

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.16, i64 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* noundef %33, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 noundef 9) #6
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.16, i64 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 9
  %40 = load i8, i8* %39, align 1
  %41 = icmp eq i8 %40, 47
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = call %struct.alias_node* @h_search(%struct.alias_node* noundef nonnull %6, i8* noundef nonnull %39)
  %44 = icmp eq %struct.alias_node* %43, null
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  call void @add_horz(%struct.alias_node* noundef nonnull %6, i8* noundef nonnull %39)
  %46 = call i32 @stat(i8* noundef nonnull %39, %struct.stat* noundef nonnull %8) #6
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 61440
  %52 = icmp eq i32 %51, 32768
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %39, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %.not21 = icmp eq %struct._IO_FILE* %54, null
  br i1 %.not21, label %64, label %55

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %59, %55
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %58 = call i8* @fgets(i8* noundef nonnull %57, i32 noundef 512, %struct._IO_FILE* noundef nonnull %54) #6
  %.not22 = icmp eq i8* %58, null
  br i1 %.not22, label %62, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %61 = call i32 @recipients(%struct.alias_node* noundef nonnull %5, i8* noundef nonnull %60)
  br label %56, !llvm.loop !6

62:                                               ; preds = %56
  %63 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %54) #6
  br label %64

64:                                               ; preds = %62, %53, %48, %45
  br label %65

65:                                               ; preds = %64, %42, %36
  br label %.backedge

.backedge:                                        ; preds = %65, %119, %125, %155, %163, %166, %203
  br label %23, !llvm.loop !7

66:                                               ; preds = %31
  %67 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.16, i64 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %71 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %68, i8* noundef nonnull %69, i8* noundef nonnull %70) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %169

74:                                               ; preds = %66
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %76 = load i8, i8* %75, align 16
  %.not = icmp eq i8 %76, 92
  br i1 %.not, label %79, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  br label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 1
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i8* [ %78, %77 ], [ %80, %79 ]
  %83 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.16, i64 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %84, i8* noundef nonnull dereferenceable(1) %82) #6
  %86 = call %struct.alias_node* @v_search(i8* noundef %82)
  %.not9 = icmp eq %struct.alias_node* %86, null
  br i1 %.not9, label %121, label %87

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %115, %87
  %.pn = phi %struct.alias_node* [ %86, %87 ], [ %.04, %115 ]
  %.0 = phi i32 [ 0, %87 ], [ %.2, %115 ]
  %.04.in = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.pn, i64 0, i32 1
  %.04 = load %struct.alias_node*, %struct.alias_node** %.04.in, align 8
  %.not18 = icmp eq %struct.alias_node* %.04, null
  br i1 %.not18, label %116, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.04, i64 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %93 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %94 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef %91, i8* noundef nonnull %92, i8* noundef nonnull %93) #6
  %.not19 = icmp eq i32 %94, 0
  br i1 %.not19, label %111, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %97 = load i8, i8* %96, align 16
  %.not20 = icmp eq i8 %97, 92
  br i1 %.not20, label %100, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  br label %102

100:                                              ; preds = %95
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 1
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ]
  %104 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %103, i8* noundef %82) #6
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %110

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.04, i64 0, i32 0
  %109 = load i8*, i8** %108, align 8
  call void @add_horz(%struct.alias_node* noundef nonnull %5, i8* noundef %109)
  br label %110

110:                                              ; preds = %107, %106
  %.1 = phi i32 [ 1, %106 ], [ %.0, %107 ]
  br label %114

111:                                              ; preds = %89
  %112 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.04, i64 0, i32 0
  %113 = load i8*, i8** %112, align 8
  call void @add_horz(%struct.alias_node* noundef nonnull %5, i8* noundef %113)
  br label %114

114:                                              ; preds = %111, %110
  %.2 = phi i32 [ %.1, %110 ], [ %.0, %111 ]
  br label %115

115:                                              ; preds = %114
  br label %88, !llvm.loop !8

116:                                              ; preds = %88
  %117 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %86, i64 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %117, align 8
  %118 = icmp eq i32 %.0, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %.backedge

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %81
  %122 = call i8* (i8*, ...) bitcast (i8* (...)* @tilde to i8* (i8*, ...)*)(i8* noundef %82) #6
  %.not10 = icmp eq i8* %122, null
  br i1 %.not10, label %158, label %123

123:                                              ; preds = %121
  %124 = call %struct.alias_node* @h_search(%struct.alias_node* noundef nonnull %6, i8* noundef nonnull %122)
  %.not14 = icmp eq %struct.alias_node* %124, null
  br i1 %.not14, label %126, label %125

125:                                              ; preds = %123
  br label %.backedge

126:                                              ; preds = %123
  call void @add_horz(%struct.alias_node* noundef nonnull %6, i8* noundef nonnull %122)
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %128 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %127, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %122, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #6
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %130 = call i32 @stat(i8* noundef nonnull %129, %struct.stat* noundef nonnull %8) #6
  %131 = icmp sgt i32 %130, -1
  br i1 %131, label %132, label %157

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 61440
  %136 = icmp eq i32 %135, 32768
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 292
  %141 = icmp eq i32 %140, 292
  br i1 %141, label %142, label %157

142:                                              ; preds = %137
  %143 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %144 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %143, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %.not15 = icmp eq %struct._IO_FILE* %144, null
  br i1 %.not15, label %157, label %145

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %149, %145
  %.01 = phi i32 [ 0, %145 ], [ %152, %149 ]
  %147 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %148 = call i8* @fgets(i8* noundef nonnull %147, i32 noundef 512, %struct._IO_FILE* noundef nonnull %144) #6
  %.not16 = icmp eq i8* %148, null
  br i1 %.not16, label %153, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %151 = call i32 @recipients(%struct.alias_node* noundef nonnull %5, i8* noundef nonnull %150)
  %152 = or i32 %.01, %151
  br label %146, !llvm.loop !9

153:                                              ; preds = %146
  %154 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %144) #6
  %.not17 = icmp eq i32 %.01, 0
  br i1 %.not17, label %156, label %155

155:                                              ; preds = %153
  br label %.backedge

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %156, %142, %137, %132, %126
  br label %158

158:                                              ; preds = %157, %121
  %159 = call i8* (i8*, ...) bitcast (i8* (...)* @res_fname to i8* (i8*, ...)*)(i8* noundef %82) #6
  %.not11 = icmp eq i8* %159, null
  br i1 %.not11, label %168, label %160

160:                                              ; preds = %158
  %161 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef nonnull %159, i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_dom, i64 0, i64 0), i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0)) #6
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void @add_horz(%struct.alias_node* noundef nonnull %5, i8* noundef nonnull %159)
  br label %.backedge

164:                                              ; preds = %160
  %165 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %82) #7
  %.not13 = icmp eq i32 %165, 0
  br i1 %.not13, label %167, label %166

166:                                              ; preds = %164
  call void @add_horz(%struct.alias_node* noundef nonnull %5, i8* noundef getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0))
  br label %.backedge

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %167, %158
  br label %169

169:                                              ; preds = %168, %73
  %170 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.16, i64 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %.not12 = icmp eq i8 %172, 92
  br i1 %.not12, label %176, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.16, i64 0, i32 0
  %175 = load i8*, i8** %174, align 8
  br label %180

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.16, i64 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  br label %180

180:                                              ; preds = %176, %173
  %181 = phi i8* [ %175, %173 ], [ %179, %176 ]
  br label %182

182:                                              ; preds = %193, %180
  %.13 = phi i32 [ 0, %180 ], [ %194, %193 ]
  %183 = load i32, i32* @nargc, align 4
  %184 = icmp slt i32 %.13, %183
  br i1 %184, label %185, label %.loopexit

185:                                              ; preds = %182
  %186 = zext i32 %.13 to i64
  %187 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i64 0, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %188, i8* noundef %181) #6
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  br label %195

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192
  %194 = add nuw nsw i32 %.13, 1
  br label %182, !llvm.loop !10

.loopexit:                                        ; preds = %182
  br label %195

195:                                              ; preds = %.loopexit, %191
  %196 = load i32, i32* @nargc, align 4
  %197 = icmp eq i32 %.13, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i32, i32* @nargc, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @nargc, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i64 0, i64 %201
  store i8* %181, i8** %202, align 8
  br label %203

203:                                              ; preds = %198, %195
  br label %.backedge

204:                                              ; preds = %29
  %205 = load i32, i32* @nargc, align 4
  store i32 %205, i32* %0, align 4
  ret i8** getelementptr inbounds ([500 x i8*], [500 x i8*]* @nargv, i64 0, i64 0)
}

declare dso_local i32 @strncmpic(...) #1

; Function Attrs: nounwind
declare dso_local i32 @stat(i8* noundef, %struct.stat* noundef) #2

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i8* @fgets(i8* noundef, i32 noundef, %struct._IO_FILE* noundef) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

declare dso_local i32 @islocal(...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #2

declare dso_local i32 @strcmpic(...) #1

declare dso_local i8* @tilde(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local i8* @res_fname(...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @v_search(i8* noundef %0) #0 {
  %2 = load i32, i32* @v_search.loaded, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load i8*, i8** @aliasfile, align 8
  call void @load_alias(%struct.alias_node* noundef nonnull @aliases, i8* noundef %5)
  store i32 1, i32* @v_search.loaded, align 4
  br label %6

6:                                                ; preds = %4, %1
  br label %7

7:                                                ; preds = %15, %6
  %.01.in = phi %struct.alias_node** [ getelementptr inbounds (%struct.alias_node, %struct.alias_node* @aliases, i64 0, i32 2), %6 ], [ %16, %15 ]
  %.01 = load %struct.alias_node*, %struct.alias_node** %.01.in, align 8
  %.not = icmp eq %struct.alias_node* %.01, null
  br i1 %.not, label %.loopexit, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.01, i64 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %10, i8* noundef %0) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %17

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.01, i64 0, i32 2
  br label %7, !llvm.loop !11

.loopexit:                                        ; preds = %7
  br label %17

17:                                               ; preds = %.loopexit, %13
  %18 = icmp eq %struct.alias_node* %.01, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %21

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %19
  %.0 = phi %struct.alias_node* [ null, %19 ], [ %.01, %20 ]
  ret %struct.alias_node* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @h_search(%struct.alias_node* nocapture noundef readonly %0, i8* noundef %1) #0 {
  br label %3

3:                                                ; preds = %11, %2
  %.pn = phi %struct.alias_node* [ %0, %2 ], [ %.0, %11 ]
  %.0.in = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.pn, i64 0, i32 1
  %.0 = load %struct.alias_node*, %struct.alias_node** %.0.in, align 8
  %.not = icmp eq %struct.alias_node* %.0, null
  br i1 %.not, label %.loopexit, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.0, i64 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %6, i8* noundef %1) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  br label %3, !llvm.loop !12

.loopexit:                                        ; preds = %3
  br label %12

12:                                               ; preds = %.loopexit, %9
  ret %struct.alias_node* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_alias(%struct.alias_node* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @debug, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* noundef %1) #6
  br label %13

13:                                               ; preds = %11, %8
  br label %97

14:                                               ; preds = %2
  br label %.outer

.outer:                                           ; preds = %74, %14
  %.01.ph = phi %struct.alias_node* [ %.12, %74 ], [ undef, %14 ]
  br label %15

15:                                               ; preds = %.backedge, %.outer
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %17 = call i8* @fgets(i8* noundef nonnull %16, i32 noundef 512, %struct._IO_FILE* noundef nonnull %6) #6
  %.not = icmp eq i8* %17, null
  br i1 %.not, label %76, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = icmp eq i8 %20, 35
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %19, align 16
  %24 = icmp eq i8 %23, 10
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %18
  br label %.backedge

.backedge:                                        ; preds = %25, %37, %62
  br label %15, !llvm.loop !13

26:                                               ; preds = %22
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %19, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9)
  %27 = icmp eq i32 %bcmp, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %26
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 9
  %30 = call i8* @strchr(i8* noundef nonnull %29, i32 noundef 10) #7
  %.not14 = icmp eq i8* %30, null
  br i1 %.not14, label %32, label %31

31:                                               ; preds = %28
  store i8 0, i8* %30, align 1
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i32, i32* @debug, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* noundef %1, i8* noundef nonnull %29) #6
  br label %37

37:                                               ; preds = %35, %32
  call void @load_alias(%struct.alias_node* noundef %0, i8* noundef nonnull %29)
  br label %.backedge

38:                                               ; preds = %26
  %39 = load i8, i8* %19, align 16
  %.not9 = icmp eq i8 %39, 32
  br i1 %.not9, label %.loopexit5, label %40

40:                                               ; preds = %38
  %41 = load i8, i8* %19, align 16
  %.not10 = icmp eq i8 %41, 9
  br i1 %.not10, label %.loopexit5, label %42

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %54, %42
  %.0 = phi i8* [ %19, %42 ], [ %55, %54 ]
  %44 = load i8, i8* %.0, align 1
  %.not11 = icmp eq i8 %44, 32
  br i1 %.not11, label %52, label %45

45:                                               ; preds = %43
  %46 = load i8, i8* %.0, align 1
  %.not12 = icmp eq i8 %46, 9
  br i1 %.not12, label %52, label %47

47:                                               ; preds = %45
  %48 = load i8, i8* %.0, align 1
  %.not13 = icmp eq i8 %48, 10
  br i1 %.not13, label %52, label %49

49:                                               ; preds = %47
  %50 = load i8, i8* %.0, align 1
  %51 = icmp ne i8 %50, 44
  br label %52

52:                                               ; preds = %49, %47, %45, %43
  %53 = phi i1 [ false, %47 ], [ false, %45 ], [ false, %43 ], [ %51, %49 ]
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = getelementptr inbounds i8, i8* %.0, i64 1
  br label %43, !llvm.loop !14

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, i8* %.0, i64 1
  store i8 0, i8* %.0, align 1
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %60 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef nonnull %19, i8* noundef nonnull %58, i8* noundef nonnull %59) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %.backedge

63:                                               ; preds = %56
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %65 = call %struct.alias_node* @add_vert(%struct.alias_node* noundef %0, i8* noundef nonnull %64)
  %66 = icmp eq %struct.alias_node* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @debug, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* noundef nonnull %19) #6
  br label %72

72:                                               ; preds = %70, %67
  br label %97

73:                                               ; preds = %63
  br label %74

.loopexit5:                                       ; preds = %38, %40
  br label %74

74:                                               ; preds = %.loopexit5, %73
  %.12 = phi %struct.alias_node* [ %65, %73 ], [ %.01.ph, %.loopexit5 ]
  %.1 = phi i8* [ %57, %73 ], [ %19, %.loopexit5 ]
  %75 = call i32 @recipients(%struct.alias_node* noundef %.12, i8* noundef nonnull %.1)
  br label %.outer, !llvm.loop !13

76:                                               ; preds = %15
  %77 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #6
  br label %78

78:                                               ; preds = %96, %76
  %.03 = phi %struct.alias_node* [ %0, %76 ], [ %.14, %96 ]
  %79 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.03, i64 0, i32 2
  %80 = load %struct.alias_node*, %struct.alias_node** %79, align 8
  %.not8 = icmp eq %struct.alias_node* %80, null
  br i1 %.not8, label %.loopexit, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.03, i64 0, i32 2
  %83 = load %struct.alias_node*, %struct.alias_node** %82, align 8
  %84 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %83, i64 0, i32 1
  %85 = load %struct.alias_node*, %struct.alias_node** %84, align 8
  %86 = icmp eq %struct.alias_node* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.03, i64 0, i32 2
  %89 = load %struct.alias_node*, %struct.alias_node** %88, align 8
  %90 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %89, i64 0, i32 2
  %91 = load %struct.alias_node*, %struct.alias_node** %90, align 8
  %92 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.03, i64 0, i32 2
  store %struct.alias_node* %91, %struct.alias_node** %92, align 8
  br label %96

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %.03, i64 0, i32 2
  %95 = load %struct.alias_node*, %struct.alias_node** %94, align 8
  br label %96

96:                                               ; preds = %93, %87
  %.14 = phi %struct.alias_node* [ %.03, %87 ], [ %95, %93 ]
  br label %78, !llvm.loop !15

.loopexit:                                        ; preds = %78
  br label %97

97:                                               ; preds = %.loopexit, %72, %13
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @recipients(%struct.alias_node* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  call void @strip_comments(i8* noundef %1)
  br label %5

5:                                                ; preds = %19, %2
  %.02 = phi i8* [ %1, %2 ], [ %20, %19 ]
  %6 = load i8, i8* %.02, align 1
  %7 = icmp eq i8 %6, 32
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = load i8, i8* %.02, align 1
  %10 = icmp eq i8 %9, 9
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i8, i8* %.02, align 1
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i8, i8* %.02, align 1
  %16 = icmp eq i8 %15, 44
  br label %17

17:                                               ; preds = %14, %11, %8, %5
  %18 = phi i1 [ true, %11 ], [ true, %8 ], [ true, %5 ], [ %16, %14 ]
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %5, !llvm.loop !16

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %85, %21
  %.13 = phi i8* [ %.02, %21 ], [ %.5, %85 ]
  %.01 = phi i32 [ 0, %21 ], [ %.1, %85 ]
  %23 = load i8, i8* %.13, align 1
  %.not = icmp eq i8 %23, 0
  br i1 %.not, label %27, label %24

24:                                               ; preds = %22
  %25 = load i8, i8* %.13, align 1
  %26 = icmp ne i8 %25, 35
  br label %27

27:                                               ; preds = %24, %22
  %28 = phi i1 [ false, %22 ], [ %26, %24 ]
  br i1 %28, label %29, label %86

29:                                               ; preds = %27
  %30 = load i8, i8* %.13, align 1
  %31 = icmp eq i8 %30, 34
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, i8* %.13, i64 1
  %34 = call i8* @strchr(i8* noundef nonnull %33, i32 noundef 34) #7
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %87

37:                                               ; preds = %32
  br label %53

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %50, %38
  %.2 = phi i8* [ %.13, %38 ], [ %51, %50 ]
  %40 = load i8, i8* %.2, align 1
  %.not7 = icmp eq i8 %40, 32
  br i1 %.not7, label %48, label %41

41:                                               ; preds = %39
  %42 = load i8, i8* %.2, align 1
  %.not10 = icmp eq i8 %42, 9
  br i1 %.not10, label %48, label %43

43:                                               ; preds = %41
  %44 = load i8, i8* %.2, align 1
  %.not11 = icmp eq i8 %44, 10
  br i1 %.not11, label %48, label %45

45:                                               ; preds = %43
  %46 = load i8, i8* %.2, align 1
  %47 = icmp ne i8 %46, 44
  br label %48

48:                                               ; preds = %45, %43, %41, %39
  %49 = phi i1 [ false, %43 ], [ false, %41 ], [ false, %39 ], [ %47, %45 ]
  br i1 %49, label %50, label %52

50:                                               ; preds = %48
  %51 = getelementptr inbounds i8, i8* %.2, i64 1
  br label %39, !llvm.loop !17

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %52, %37
  %.04 = phi i8* [ %33, %37 ], [ %.13, %52 ]
  %.3 = phi i8* [ %34, %37 ], [ %.2, %52 ]
  %54 = load i8, i8* %.3, align 1
  %.not8 = icmp eq i8 %54, 0
  br i1 %.not8, label %57, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds i8, i8* %.3, i64 1
  store i8 0, i8* %.3, align 1
  br label %57

57:                                               ; preds = %55, %53
  %.4 = phi i8* [ %56, %55 ], [ %.3, %53 ]
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %60 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (...)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* noundef nonnull %.04, i8* noundef nonnull %58, i8* noundef nonnull %59) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i64 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %66 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* noundef %64, i8* noundef nonnull %65) #6
  %.not9 = icmp eq i32 %66, 0
  br i1 %.not9, label %68, label %67

67:                                               ; preds = %62, %57
  call void @add_horz(%struct.alias_node* noundef %0, i8* noundef nonnull %.04)
  br label %68

68:                                               ; preds = %67, %62
  %.1 = phi i32 [ 1, %67 ], [ %.01, %62 ]
  br label %69

69:                                               ; preds = %83, %68
  %.5 = phi i8* [ %.4, %68 ], [ %84, %83 ]
  %70 = load i8, i8* %.5, align 1
  %71 = icmp eq i8 %70, 32
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load i8, i8* %.5, align 1
  %74 = icmp eq i8 %73, 9
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i8, i8* %.5, align 1
  %77 = icmp eq i8 %76, 10
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i8, i8* %.5, align 1
  %80 = icmp eq i8 %79, 44
  br label %81

81:                                               ; preds = %78, %75, %72, %69
  %82 = phi i1 [ true, %75 ], [ true, %72 ], [ true, %69 ], [ %80, %78 ]
  br i1 %82, label %83, label %85

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, i8* %.5, i64 1
  br label %69, !llvm.loop !18

85:                                               ; preds = %81
  br label %22, !llvm.loop !19

86:                                               ; preds = %27
  br label %87

87:                                               ; preds = %86, %36
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @strip_comments(i8* noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i8* [ %0, %1 ], [ %8, %11 ]
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %.0, i32 noundef 40) #7
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %.loopexit, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8, i8* %3, i64 1
  %6 = call i8* @strchr(i8* noundef nonnull %5, i32 noundef 41) #7
  %.not2 = icmp eq i8* %6, null
  br i1 %.not2, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, i8* %6, i64 1
  %9 = call i8* @strcpy(i8* noundef nonnull %3, i8* noundef nonnull %8) #6
  br label %11

10:                                               ; preds = %4
  store i8 0, i8* %3, align 1
  br label %12

11:                                               ; preds = %7
  br label %2, !llvm.loop !20

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @add_vert(%struct.alias_node* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = call i8* @strchr(i8* noundef nonnull dereferenceable(1) %1, i32 noundef 58) #7
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  store i8 0, i8* %3, align 1
  br label %5

5:                                                ; preds = %4, %2
  %6 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #6
  %7 = bitcast i8* %6 to %struct.alias_node*
  %.not1 = icmp eq i8* %6, null
  br i1 %.not1, label %27, label %8

8:                                                ; preds = %5
  %9 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #7
  %10 = add i64 %9, 1
  %11 = and i64 %10, 4294967295
  %12 = call noalias i8* @malloc(i64 noundef %11) #6
  %13 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %7, i64 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = icmp eq i8* %12, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  call void @free(i8* noundef %6) #6
  br label %26

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %7, i64 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %18, i8* noundef nonnull dereferenceable(1) %1) #6
  %20 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i64 0, i32 2
  %21 = load %struct.alias_node*, %struct.alias_node** %20, align 8
  %22 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %7, i64 0, i32 2
  store %struct.alias_node* %21, %struct.alias_node** %22, align 8
  %23 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %7, i64 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %23, align 8
  %24 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i64 0, i32 2
  %25 = bitcast %struct.alias_node** %24 to i8**
  store i8* %6, i8** %25, align 8
  br label %26

26:                                               ; preds = %16, %15
  %.0 = phi %struct.alias_node* [ null, %15 ], [ %7, %16 ]
  br label %27

27:                                               ; preds = %26, %5
  %.1 = phi %struct.alias_node* [ %.0, %26 ], [ %7, %5 ]
  ret %struct.alias_node* %.1
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_horz(%struct.alias_node* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #6
  %4 = bitcast i8* %3 to %struct.alias_node*
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %24, label %5

5:                                                ; preds = %2
  %6 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #7
  %7 = add i64 %6, 1
  %8 = and i64 %7, 4294967295
  %9 = call noalias i8* @malloc(i64 noundef %8) #6
  %10 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %4, i64 0, i32 0
  store i8* %9, i8** %10, align 8
  %11 = icmp eq i8* %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  call void @free(i8* noundef %3) #6
  br label %23

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %4, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %15, i8* noundef nonnull dereferenceable(1) %1) #6
  %17 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i64 0, i32 1
  %18 = load %struct.alias_node*, %struct.alias_node** %17, align 8
  %19 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %4, i64 0, i32 1
  store %struct.alias_node* %18, %struct.alias_node** %19, align 8
  %20 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %4, i64 0, i32 2
  store %struct.alias_node* null, %struct.alias_node** %20, align 8
  %21 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i64 0, i32 1
  %22 = bitcast %struct.alias_node** %21 to i8**
  store i8* %3, i8** %22, align 8
  br label %23

23:                                               ; preds = %13, %12
  br label %24

24:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.alias_node* @pop(%struct.alias_node* noundef %0) #4 {
  %.not = icmp eq %struct.alias_node* %0, null
  br i1 %.not, label %10, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i64 0, i32 1
  %4 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %.not1 = icmp eq %struct.alias_node* %4, null
  br i1 %.not1, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %4, i64 0, i32 1
  %7 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %8 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %0, i64 0, i32 1
  store %struct.alias_node* %7, %struct.alias_node** %8, align 8
  br label %9

9:                                                ; preds = %5, %2
  br label %10

10:                                               ; preds = %9, %1
  %.0 = phi %struct.alias_node* [ %4, %9 ], [ null, %1 ]
  ret %struct.alias_node* %.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
