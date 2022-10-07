Return-Path: <linux-ntb+bncBCC4FY7U6QARBBOA76MQMGQEXISNMWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD05F751B
	for <lists+linux-ntb@lfdr.de>; Fri,  7 Oct 2022 10:15:04 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id h1-20020a62b401000000b0056161cd284fsf2489049pfn.16
        for <lists+linux-ntb@lfdr.de>; Fri, 07 Oct 2022 01:15:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665130501; cv=pass;
        d=google.com; s=arc-20160816;
        b=xEi+MqcVVm9djESCAWCQE6Q0Qx1EuN6x6Ts06K2tQ726VhWF6yRGTeL6kDvMEFBBnR
         YYk5640M2cXhu3xAsgWh6QuKJqXkxTqn82Y+KbUL5bpB9GPfQwZ7gQEnP97NNB8tsVCs
         CQ/nL01U42ZzcCndOcFGumd5x35V+kXxdAGtvOqoxcoqka6dUDpPK7L/IyGk4zsmN7Tx
         6uGLg8pNuiH5e2ShbzGBXdgVQd2d10J9+SPwJKMc4T+9RDaxumP6hlE1L7VYsoOsXI+N
         HjzYYcpmFoQ5u93fHlzh1hvaYRNKAKltAbYQ5/roVeLf45r/Dy5QR4pLH88bRSnSpuXp
         EmrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=XuCO3liBXKZXB3BJgGTKF4mJL/ukjeSmCSwwSzCiMcI=;
        b=ibspyW+GJZIEINcmw55MrIjBcQAil/FK1TH0GOzaEC2XQ5KKuLlQnelv4ItL7kU7lV
         dfQR4gVkujYh37Zm9YOljkQj21939wSCHRyIHvr0KdzKKfj535M1B06nPCHn2uYizrp8
         N8qzYVr+GHf0TbDdNgnf7VFtytx9MMDdVhFVaY6T+nLZycmNV0VXkk4ftp8ih7UcA0d1
         ABwNOSJO/R5d5V8UnFGQSV7GRqEF/zE8rmd41XquGemwiIPZSDslDBIFd3IgfBoRtW02
         FdQVl5AkMiM7CWJ7xkWfDmmXUB4hNMfOeaDuafiMu7es4c5Qqta5yUF5p/OeTVhxngrx
         US8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Igjzj+JX;
       spf=pass (google.com: domain of vl9258857@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=vl9258857@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=XuCO3liBXKZXB3BJgGTKF4mJL/ukjeSmCSwwSzCiMcI=;
        b=b51aKOXLwuml0l1o++4BJfSYWPB2HOtIXTGHHwAqvawdG9dCk1+GkNwb8FrZafVFTL
         YjUBOcRBNyUhU+Z8M8+lv3fxH7bqrqiHqytMcq1meEyuClqagvigXGYnqxPMD749Kg4A
         FdQ588q3wCjlT1XkkyKk29Wy5SH+4iIAeTHHE6qGi7sWcrcaHp5kXUPSifzN3z3YdaQF
         E8kLavEDXM1N6mrWV4Ed999H9PqFb0JHzmu6Xlwe7/CgGCn0a60lpdE5noJHac6TvxLs
         PWycPSY7NVDSq3lMUtVZtRI9cpj/XGClAz6WCDGLIY+8s+BZNIlvfRCziuisJ0gV5+6j
         rWMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XuCO3liBXKZXB3BJgGTKF4mJL/ukjeSmCSwwSzCiMcI=;
        b=DCQZxrfgqaxNWauETBEg5N0AypWS5If2XRYzGL5EilItZquPOZUjbZVYwt8vfUeGi3
         thlmnI6OTMt0mDRWWxU8mywtvRU6L6tz06ptq24TJUaGK9WZo3lvIq3tPKtFEdMFtVlC
         nnh0vmjqW4DKJI9ZuY7NUPGecLIW86vo89REQ9pi+SJm8P/kX9feXNqHm9ApZrhPrKC+
         jk5vviPzA3UhuGjy2hIM57YKn51nm+Pe3ICgbcHchz2ZgCvz7ow4OCXvoQeHWhycMt8a
         krIPyiLe8E2HhWgGD/Eh4ooT/Y9dytbrlpIDu5vIffLYVN2kvetOq4M5oMdJW2H5bhsM
         hQYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XuCO3liBXKZXB3BJgGTKF4mJL/ukjeSmCSwwSzCiMcI=;
        b=OdHRTpDgzOzZtaON+ugT60OHsymL+DQ2cHayqZWSAM6mkRyKPSHXl/tp/DMmW/yWoW
         mGqtRoTqtjtaXazt5shghB6bPgWEFMv4Z7r/H3SyMEWWedxfVxyI/lwlwUGiwHFGQjPX
         OEFl5vSB1kQSKkUPNhd76e3zqbTE7MpsaT65lcg1wG41O7GjLhhYpTc2iJ175HB5g/im
         BDvitYO/TsirDIyNU+IFY0ktdw/E493oP1snTrE+qQySNSzQ38FpItZpc1eiJMj5f8vb
         wjlBF4kkNN9XqxwBBokz6qhOfiEvTC+Rr4MqvVWpauCKE46mnhYsy2iNN5ly0gkMkN8D
         i9fQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACrzQf3Mkj0Pnpbcn2ctC1tgVhLRoyiQF7iDP3hw1Xvre28vGbZ0qPLN
	/tSsHD/I+tYBznjsylK1+Ho=
X-Google-Smtp-Source: AMsMyM6qKfenLyU0+DtYNmewC1KEakIzgT/1+CAX/URO1L8BuK8tpzMH5aO/KoOzlwDH/hPJceTTaQ==
X-Received: by 2002:a17:902:ecc3:b0:178:3217:e455 with SMTP id a3-20020a170902ecc300b001783217e455mr3980548plh.18.1665130501236;
        Fri, 07 Oct 2022 01:15:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:8e4d:0:b0:541:d22f:4f4a with SMTP id d13-20020aa78e4d000000b00541d22f4f4als2104803pfr.10.-pod-prod-gmail;
 Fri, 07 Oct 2022 01:15:00 -0700 (PDT)
X-Received: by 2002:a05:6a00:22d6:b0:543:7003:21ab with SMTP id f22-20020a056a0022d600b00543700321abmr3703569pfj.54.1665130500360;
        Fri, 07 Oct 2022 01:15:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665130500; cv=none;
        d=google.com; s=arc-20160816;
        b=mPXvDqb0CMPLWA48mQtN4gXhqppO7xf+0MoZbfN36y/E3ZSAjdPHm7NZGhbzgsn6IM
         CTtmIV18oOjYlBZnLKyJwP/7W90E5Oypt8dJFMEfJzie6ssPQmFfvkIi6S0J1WkyxGAt
         cG+KCji8xfKUQHWAzG/OPF4QuQBcu26pZp75mrirpE35bFqlgcUdGS0bpvl4ndnWA2mK
         RgvN0E9R6GfihT40X07NLEyaLOF8PsHwdyzWLg4JbE1FanUif1DdA8VT7c+7Ych/2X27
         OPU/ZZuF0LFpmquRZxvRlIDiSBzqEJwa/Bxn+DWLvyfhHjrDF66iMDNWstztcnFA+jfH
         lHQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=dwX0etlnvday/xdPRywSVIONZJaeV87r6MamPe3vgkU=;
        b=H98/5jakhS7Z9QUYrmtFPSyCNqV3rOlWY0BczGFj6bQl9L8YQ2FKOO0KsJcNxw74Ic
         PZpp+2iodtow4YLF87xi9TIBmBtGjLc3gaS4gXj12GnuDb0PlOMISFccIWHt6KJEVV63
         MOXb91Vk7aAmGqQrsTfMiPsucfWrZaujPl5H/CNRVa4pGrm6+6RN4xXNBCZ4T509FT6b
         egveroQCAOUt8H2M5FIrIoleARWiihqHslDcRnxNlkfTSyU879MJbdBUMDCLGaSp8PdX
         MUZoG/V0ty9nQdQeYtAoS2ScyYSgB7xpwUIaoq0pmbe8ytLFNsY+Q/FQzzCX11vW8IrL
         eitA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Igjzj+JX;
       spf=pass (google.com: domain of vl9258857@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=vl9258857@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id nv9-20020a17090b1b4900b001fdfeac4ccesi44998pjb.1.2022.10.07.01.15.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 01:15:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vl9258857@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id d24so3926543pls.4
        for <linux-ntb@googlegroups.com>; Fri, 07 Oct 2022 01:15:00 -0700 (PDT)
X-Received: by 2002:a17:90b:4b4b:b0:20a:926f:3c2e with SMTP id
 mi11-20020a17090b4b4b00b0020a926f3c2emr3957958pjb.87.1665130499807; Fri, 07
 Oct 2022 01:14:59 -0700 (PDT)
MIME-Version: 1.0
From: Vuong Linh <vl9258857@gmail.com>
Date: Fri, 7 Oct 2022 15:14:48 +0700
Message-ID: <CAKsWkuiYUa+KmiCaZyDy8Cwqvx-ezvDUAymp0kqEh0t16sfVcA@mail.gmail.com>
Subject: =?UTF-8?B?54ix5Zu95omN5LiN6KaB5YWx5Lqn5YWa?=
To: linux-ntb@googlegroups.com, yuval@ecitele.com, xycheng@mail.ustc.edu.cn, 
	863783149@qq.com
Content-Type: multipart/alternative; boundary="000000000000f21d2505ea6d6774"
X-Original-Sender: vl9258857@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Igjzj+JX;       spf=pass
 (google.com: domain of vl9258857@gmail.com designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=vl9258857@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

--000000000000f21d2505ea6d6774
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

5L2g5aW9IQ0KDQrkuIDkvY3ov4fljrvnu4/luLjku47nnJ/nm7jmkYrkvY3liY3otbDov4fnmoTp
ppnmuK/kurrvvIzmr4/lpKnlv5nkuo7oh6rlt7HnmoTkuIrkuIvnj63jgIHlkIPppa3jgIHkuIro
oZfjgIHnnIvmiI/igKbigKbku47mnaXmsqHmnInorqTnnJ/lnLDljrvlhbPms6jov5nkupvnq5nl
nKjmkYrkvY3lkI7pnaLnmoTlrablkZjjgILnm7TliLDlj43pgIHkuK3kuYvlkI7vvIzlpbnmiY3n
qoHnhLbphpLop4nvvJrov5nkupvlrablkZjmiY3mmK/ov5nkuKrkuJbnlYznnJ/mraPnmoTluIzm
nJvvvIzmmK/lnKjpu5Hmmpfph4zluKbnu5nkurrku6zlhYnmmI7nmoTkurrjgIINCg0K5byg5ZCb
5aW96K6k5Li677yM5bCG5piv5pyq5p2l5Lit5Zu955qE5biM5pyb44CC5aaC5p6c5bCG5p2l5pyJ
5LiA5Liq5rKh5pyJ5YWx5Lqn5YWa55qE5Lit5Zu977yM4oCc5piv5oiR5Lus5Lit5Zu95Lq66YeN
5bu66YGT5b6355qE56S+5Lya5Z+655+z44CC4oCdDQoNCuWlueS4uuS7gOS5iOaKiuinhuS4uuac
quadpeS4reWbveeahOW4jOacm++8n+W8oOWQm+WlveWls+Wjq+ino+mHiuivtO+8muKAnOWboOS4
uuS6uuW/g+aciee+juWWhO+8jOW9k+aKiuS6uuW/g+mHjOmdoueahOe+juWWhOaJvuWHuuadpe+8
jOmCo+S7luWwseS4jeS8muWGjeayieedoeOAguWFtuWunuWwseaYr+WcqOWUpOmGkuaIkeS7rOS4
reWbveS6uuOAguWUpOmGkuaIkeS7rOWvuee+juWWhOOAgemBk+W+t+OAgeekvOS5ieW7ieiAu+ea
hOiusOW/hu+8jOWwseaYr+i/meagt+OAguKAneKAnOecn+eahOW+iOaEn+aBqei/meS4quS4lueV
jOacie+8geKAnQ0K44CC5aW56K+077ya4oCc5rKh5pyJ5L2g5Lus55qE5Z2a5oyB77yM5LiW55WM
55yf55qE5LiN5Lya6YaS6KeJ44CC5aW95oSf6LCi5L2g5Lus6L+Z5LmI5aSa5bm055qE5Z2a5oyB
5ZKM5b+N6ICQ77yb5peg6K665Zyo5LuA5LmI546v5aKD5L2g5Lus6L+Y5L+d5oyB6L+Z5LmI5ZaE
6Imv44CC4oCdDQoNCueptuern+ecn+ebuOWmguS9le+8jOiuqeaIkeS7rOadpeeci+eci+S4gOS4
i+i/meevh+iuuuaWh+WIsOW6leWGmeS6huS7gOS5iOOAgg0KDQrmrLLnn6Xor6bmg4XvvIzor7fn
nIvpmYTku7bjgIINCuelneS9oOW5s+Wuie+8gQ0KDQotLSAKWW91IHJlY2VpdmVkIHRoaXMgbWVz
c2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAibGlu
dXgtbnRiIiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJl
Y2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byBsaW51eC1udGIrdW5zdWJz
Y3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbS4KVG8gdmlldyB0aGlzIGRpc2N1c3Npb24gb24gdGhlIHdl
YiB2aXNpdCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvbGludXgtbnRiL0NBS3NX
a3VpWVVhJTJCS21pQ2FaeUR5OEN3cXZ4LWV6dkRVQXltcDBrcUVoMHQxNnNmVmNBJTQwbWFpbC5n
bWFpbC5jb20uCg==
--000000000000f21d2505ea6d6774
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+5L2g5aW9ITxkaXY+PGJyPjwvZGl2PjxkaXY+5LiA5L2N6L+H5Y6757uP
5bi45LuO55yf55u45pGK5L2N5YmN6LWw6L+H55qE6aaZ5riv5Lq677yM5q+P5aSp5b+Z5LqO6Ieq
5bex55qE5LiK5LiL54+t44CB5ZCD6aWt44CB5LiK6KGX44CB55yL5oiP4oCm4oCm5LuO5p2l5rKh
5pyJ6K6k55yf5Zyw5Y675YWz5rOo6L+Z5Lqb56uZ5Zyo5pGK5L2N5ZCO6Z2i55qE5a2m5ZGY44CC
55u05Yiw5Y+N6YCB5Lit5LmL5ZCO77yM5aW55omN56qB54S26YaS6KeJ77ya6L+Z5Lqb5a2m5ZGY
5omN5piv6L+Z5Liq5LiW55WM55yf5q2j55qE5biM5pyb77yM5piv5Zyo6buR5pqX6YeM5bim57uZ
5Lq65Lus5YWJ5piO55qE5Lq644CCPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj7lvKDlkJvlpb3o
rqTkuLrvvIzlsIbmmK/mnKrmnaXkuK3lm73nmoTluIzmnJvjgILlpoLmnpzlsIbmnaXmnInkuIDk
uKrmsqHmnInlhbHkuqflhZrnmoTkuK3lm73vvIzigJzmmK/miJHku6zkuK3lm73kurrph43lu7rp
gZPlvrfnmoTnpL7kvJrln7rnn7PjgILigJ08L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PuWlueS4
uuS7gOS5iOaKiuinhuS4uuacquadpeS4reWbveeahOW4jOacm++8n+W8oOWQm+WlveWls+Wjq+in
o+mHiuivtO+8muKAnOWboOS4uuS6uuW/g+aciee+juWWhO+8jOW9k+aKiuS6uuW/g+mHjOmdouea
hOe+juWWhOaJvuWHuuadpe+8jOmCo+S7luWwseS4jeS8muWGjeayieedoeOAguWFtuWunuWwseaY
r+WcqOWUpOmGkuaIkeS7rOS4reWbveS6uuOAguWUpOmGkuaIkeS7rOWvuee+juWWhOOAgemBk+W+
t+OAgeekvOS5ieW7ieiAu+eahOiusOW/hu+8jOWwseaYr+i/meagt+OAguKAneKAnOecn+eahOW+
iOaEn+aBqei/meS4quS4lueVjOacie+8geKAnSDjgILlpbnor7TvvJrigJzmsqHmnInkvaDku6zn
moTlnZrmjIHvvIzkuJbnlYznnJ/nmoTkuI3kvJrphpLop4njgILlpb3mhJ/osKLkvaDku6zov5nk
uYjlpJrlubTnmoTlnZrmjIHlkozlv43ogJDvvJvml6DorrrlnKjku4DkuYjnjq/looPkvaDku6zo
v5jkv53mjIHov5nkuYjlloToia/jgILigJ08L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pueptuer
n+ecn+ebuOWmguS9le+8jOiuqeaIkeS7rOadpeeci+eci+S4gOS4i+i/meevh+iuuuaWh+WIsOW6
leWGmeS6huS7gOS5iOOAgjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+5qyy55+l6K+m5oOF77yM
6K+355yL6ZmE5Lu244CCPC9kaXY+PGRpdj7npZ3kvaDlubPlronvvIE8L2Rpdj48L2Rpdj4NCg0K
PHA+PC9wPgoKLS0gPGJyIC8+CllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3Ug
YXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgJnF1b3Q7bGludXgtbnRiJnF1b3Q7
IGdyb3VwLjxiciAvPgpUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMgZ3JvdXAgYW5kIHN0b3AgcmVj
ZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzps
aW51eC1udGIrdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbSI+bGludXgtbnRiK3Vuc3Vic2Ny
aWJlQGdvb2dsZWdyb3Vwcy5jb208L2E+LjxiciAvPgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBv
biB0aGUgd2ViIHZpc2l0IDxhIGhyZWY9Imh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dp
ZC9saW51eC1udGIvQ0FLc1drdWlZVWElMkJLbWlDYVp5RHk4Q3dxdngtZXp2RFVBeW1wMGtxRWgw
dDE2c2ZWY0ElNDBtYWlsLmdtYWlsLmNvbT91dG1fbWVkaXVtPWVtYWlsJnV0bV9zb3VyY2U9Zm9v
dGVyIj5odHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2QvbXNnaWQvbGludXgtbnRiL0NBS3NXa3Vp
WVVhJTJCS21pQ2FaeUR5OEN3cXZ4LWV6dkRVQXltcDBrcUVoMHQxNnNmVmNBJTQwbWFpbC5nbWFp
bC5jb208L2E+LjxiciAvPgo=
--000000000000f21d2505ea6d6774--
