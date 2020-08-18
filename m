Return-Path: <linux-ntb+bncBDL47SW5YIBRBROQ574QKGQE6MIULKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 767C32487E3
	for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 16:40:06 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id d1sf13375893qvs.21
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 07:40:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oiSOPPBfbTWw/q2H84NTIStFrvs14mVVVpviHcqkAGk=;
        b=lZI7PqAICA9jOJVrWeeXg7usTVtU24SqnDersYOeFdhq1q3RpKlpH9yJulrBTHdEUe
         N8ziE3fKMRYLJlah4AFXNDK1tJ4Z3AYDDYRRJBn3dSANvaq9CtQTZNsZQdg+gVbg6dcq
         UoDMqzaqjlXXZE9NF1CBW3jeeVG3qnPGsTxcMIZlWB0PGervHTQzCOxgsYRRsjp6mU0d
         eHAilJNoG6XNstLkHrvhCilXc7Z9CvsD0/ftW38922Wc64mbZb/Chl05dRZtNqYk4+vC
         zYMXhjk7+TxQAsj+tOj2Wg6q42s99s6JOwSQ3evZN72I5JKD5kNwLISBjF0eGdgR6/Y5
         6TMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oiSOPPBfbTWw/q2H84NTIStFrvs14mVVVpviHcqkAGk=;
        b=uCXGa7kcmFZE7VeeZHv5MYekNtUZjKUZIf3oTubmtrm8Mwq5Q3Macj1P43q2UjseMn
         x40ET/CrAR1M9WZ9yFbzSj5SxT5MZ+t4Gv4cN3a/PVyTCtL2s2cDjbWLBNU4NvRUHbMP
         ePY/46YhgJzqt/dHONeZjcMcf4jeUw1+9xWu85SJE8Mb6JseMPbp7rbM+ztPKbp62pGS
         ZIsLp7ZPaL42RMnji3knvWWdpCKws8Ff3tONKLhR2YHKWi3WeZBPiFUb5FIA89MC/V/B
         LX0o49HcUMJe7wsx/6i7KjWRG5ixNJm21xq7kC8PWqdcFmgEjMC/qbfcQwEow5kgUS9g
         EijQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oiSOPPBfbTWw/q2H84NTIStFrvs14mVVVpviHcqkAGk=;
        b=FH6npu76KLNOU4dsC8yeIqK9f6YQcqC9NKGornSP8kyY8NMhfqZ8tlLv5XNgSnqMYV
         qzioe817sOCKO8Ra/PIZ22f5Yhjuomrg8GH3hnJsg0X4gnI8xhHEhWb++cDaegTGoHcO
         Ofl/wtorU3vPDA5biZbWjRPg+4DOw8wKHoML3utuO+bqhji48tZG0HW6Z1ZM9RHmxyCR
         6aZdbx+ocS9JDpD/dgXP5hFvZUvnRBPI8exnjLUyWs8bQbUgcEKdThw6smrvKzV2Yatd
         oWCGD3a7dYDY31VElGWTYlOMNjSgyhMxHTgSltFFNwlZCV0rPvDoEfg3n1ZN5fgKRM5Z
         c8AA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530tEehNy06ObOVTuzFfvxXWxt46zisSy8wYzsskJnlLEp0rqU03
	/2EbyUpZJDrfUQQB9xD2Z48=
X-Google-Smtp-Source: ABdhPJxo0KdyqS/jFojAuNQDe9T1DjJEgqrKqEG9t4g4u/jdigTSh5+yTgsfcBJ/x4NyY7PAHAjqPg==
X-Received: by 2002:ac8:6a07:: with SMTP id t7mr18276395qtr.1.1597761605271;
        Tue, 18 Aug 2020 07:40:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ad4:4ea4:: with SMTP id ed4ls5076977qvb.11.gmail; Tue, 18
 Aug 2020 07:40:04 -0700 (PDT)
X-Received: by 2002:ad4:4a27:: with SMTP id n7mr19807096qvz.184.1597761604373;
        Tue, 18 Aug 2020 07:40:04 -0700 (PDT)
Date: Tue, 18 Aug 2020 07:40:03 -0700 (PDT)
From: =?UTF-8?B?15LXqNeV16DXnSDXntec15o=?= <grwnmm@gmail.com>
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <edc84f52-81d8-4074-817a-555ba40dd300n@googlegroups.com>
In-Reply-To: <02c90656-8c04-4fb7-8a34-bec7491e87ban@googlegroups.com>
References: <CAP7XNCwEGQ+-Q==u4yk4yvJdk1X+gsfSU6pUV_hROjmF=p-DHw@mail.gmail.com>
 <02c90656-8c04-4fb7-8a34-bec7491e87ban@googlegroups.com>
Subject: Re: Hello,
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_140_1063374429.1597761603907"
X-Original-Sender: grwnmm@gmail.com
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

------=_Part_140_1063374429.1597761603907
Content-Type: multipart/alternative; 
	boundary="----=_Part_141_1680752490.1597761603907"

------=_Part_141_1680752490.1597761603907
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm bored

=D7=91-=D7=99=D7=95=D7=9D =D7=A9=D7=A0=D7=99, 27 =D7=91=D7=99=D7=95=D7=9C=
=D7=99 2020 =D7=91=D7=A9=D7=A2=D7=94 6:23:07 UTC+3, azay...@gmail.com =D7=
=9B=D7=AA=D7=91/=D7=94:

> =D8=B2=D8=A7=D9=8A=D8=AF =D8=B9=D9=88=D8=AF=D9=87 =D8=B9=D8=AA=D9=8A=D9=
=82 =D8=A7=D9=84=D8=B9=D8=B7=D9=88=D9=8A 1065628826=20
> azay...@gmail.com
> 966561063734
> 966554288857=20
>
> =D9=81=D9=8A =D8=A7=D9=84=D8=A7=D8=AB=D9=86=D9=8A=D9=86=D8=8C 29 =D9=8A=
=D9=88=D9=86=D9=8A=D9=88 2020 =D9=81=D9=8A =D8=AA=D9=85=D8=A7=D9=85 =D8=A7=
=D9=84=D8=B3=D8=A7=D8=B9=D8=A9 10:16:03 =D9=85 UTC+3=D8=8C =D9=83=D8=AA=D8=
=A8=20
> mrs.victoria alexander =D8=B1=D8=B3=D8=A7=D9=84=D8=A9 =D9=86=D8=B5=D9=87=
=D8=A7:
>
>> Dear friend,=20
>>
>>
>> I have a business container transaction what that some of( $13million=20
>> dollars)=20
>>
>> I would like to discuss with you. If you are interested, please=20
>> contact my email=20
>>
>> address (mrs.victori...@gmail.com)=20
>>
>> My WhatsApp number but only message (+19293737780 <(929)%20373-7780>)=20
>>
>> Please do not reply if you are not ready=20
>> Thanks=20
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/edc84f52-81d8-4074-817a-555ba40dd300n%40googlegroups.com.

------=_Part_141_1680752490.1597761603907
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm bored<br><br><div class=3D"gmail_quote"><div dir=3D"auto" class=3D"gmai=
l_attr">=D7=91-=D7=99=D7=95=D7=9D =D7=A9=D7=A0=D7=99, 27 =D7=91=D7=99=D7=95=
=D7=9C=D7=99 2020 =D7=91=D7=A9=D7=A2=D7=94 6:23:07 UTC+3, azay...@gmail.com=
 =D7=9B=D7=AA=D7=91/=D7=94:<br/></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin: 0 0 0 0.8ex; border-right: 1px solid rgb(204, 204, 204); padd=
ing-right: 1ex;">=D8=B2=D8=A7=D9=8A=D8=AF =D8=B9=D9=88=D8=AF=D9=87 =D8=B9=
=D8=AA=D9=8A=D9=82 =D8=A7=D9=84=D8=B9=D8=B7=D9=88=D9=8A 1065628826=C2=A0<di=
v><a href data-email-masked rel=3D"nofollow">azay...@gmail.com</a></div><di=
v>966561063734</div><div>966554288857=C2=A0<br><br></div><div class=3D"gmai=
l_quote"><div dir=3D"auto" class=3D"gmail_attr">=D9=81=D9=8A =D8=A7=D9=84=
=D8=A7=D8=AB=D9=86=D9=8A=D9=86=D8=8C 29 =D9=8A=D9=88=D9=86=D9=8A=D9=88 2020=
 =D9=81=D9=8A =D8=AA=D9=85=D8=A7=D9=85 =D8=A7=D9=84=D8=B3=D8=A7=D8=B9=D8=A9=
 10:16:03 =D9=85 UTC+3=D8=8C =D9=83=D8=AA=D8=A8 mrs.victoria alexander =D8=
=B1=D8=B3=D8=A7=D9=84=D8=A9 =D9=86=D8=B5=D9=87=D8=A7:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 0.8ex;border-right:1px solid rg=
b(204,204,204);padding-right:1ex">Dear friend,
<br>
<br>
<br>I have a business container transaction what that some of( $13million d=
ollars)
<br>
<br> I would like to discuss with you. If you are interested, please
<br>contact my email
<br>
<br>address (<a rel=3D"nofollow">mrs.victori...@gmail.com</a>)
<br>
<br>My WhatsApp number but only message <a href=3D"tel:(929)%20373-7780" va=
lue=3D"+19293737780" rel=3D"nofollow" target=3D"_blank">(+19293737780</a>)
<br>
<br>Please do not reply if you are not ready
<br>Thanks
<br></blockquote></div></blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/edc84f52-81d8-4074-817a-555ba40dd300n%40googlegroups.c=
om?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgi=
d/linux-ntb/edc84f52-81d8-4074-817a-555ba40dd300n%40googlegroups.com</a>.<b=
r />

------=_Part_141_1680752490.1597761603907--

------=_Part_140_1063374429.1597761603907--
