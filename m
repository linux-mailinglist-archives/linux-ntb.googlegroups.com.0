Return-Path: <linux-ntb+bncBDVPR6NQQAFRBFM24KNQMGQERSCIWBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF21630D1A
	for <lists+linux-ntb@lfdr.de>; Sat, 19 Nov 2022 09:00:22 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id c187-20020a1c35c4000000b003cfee3c91cdsf3479889wma.6
        for <lists+linux-ntb@lfdr.de>; Sat, 19 Nov 2022 00:00:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1668844822; cv=pass;
        d=google.com; s=arc-20160816;
        b=pT9ComsHkKKjc32RaLEFFW835vHJqAcPsD7WZsinSyYaAdhx6qofkdK+1lCICS6nT7
         rLXuksIqbsyB+r8nh+s6VcwUquAY5O29O4mjmDWx9nRMaI/TU2UKAkb97jIMEONEqPid
         QkvBllW/1NzgnLUDM8cHW4d8qls+aymoCJoz5ioQDeQsdhDNSf/4/r3zQ3RuOSKihl+U
         bGpNjfZHEa0w6ddBLeXT2ftiv4mvAPs54KFK6vmaXmdXK2oFaDJ67Jfq7C7jnx+uX3+g
         XieU+nU3skhasxtP2e5QJpiLsVI9xAx+GGKyV9FV6FVOIXlzu+L+dHnqTcqr1y59bj8k
         Lbvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=IuW4pJnr8FS6TVEaoSDNPWXox4yiYQeZra7FgYusT14=;
        b=YUvJZbaDWhoyxqdrswLoWRCSvzvRlyseahlJ9/KF10ukt95iJckPFHcsa34nM8pJuw
         AMTSuEJ9938kKM8LM8DibsoKdoesPxcipy/eiTRllTIb9gYlrj+mzp84WeRaHLw154We
         T2WJ8Ln/S3YLb+5yrumhBEsS9v4Qp13rEQr6UgpNUkMOT6Ljc+MqSwE33G+i92ZUcn+5
         5+Mo4btBN73XmK9wDj7kq62y3KnkQs2r6BqjkfyAY/D3eU/8bgXxbVkBlqG6Y9BDKXEr
         spNvDIoO0ZbAavzpUxM3xMndz8URjSc/o1PYSj+XT3Oe/KzV3jPqPwrfcgtmpM29jAmp
         fuhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kkAq3lIl;
       spf=pass (google.com: domain of makelong258@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=makelong258@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=IuW4pJnr8FS6TVEaoSDNPWXox4yiYQeZra7FgYusT14=;
        b=tO8XzH5nG0RzZ83wCKBbG0Zu1vvG4zyR/9wqFq0bITqgf5ad2sBX/dGaKwzD71Ffri
         Y03Wn6rSW2ikPhVM9GckjXRQ/qynHnO8LOImMTlX+ZP2ZF0BFNyaA2fR8Pmw3fftu3Xw
         rcccsTt4C+Y65/8A4kElQ7DMeZeNTmbXTvSdpYBSARXmQJkEVMCblcO1vsNBTmVleCrr
         tteKp/xVAO+n2XLm+fxGh39qSjxzSNH5Tdpm6H3LoG+myj/CCIrmqxBhVgjeAf9A5zYc
         PqCS3H8pgPExQJqED9OEwfDaRejVczVhEaeeRsorw/ToAjmakhRgY16b/tMxAQOn63xR
         TQiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IuW4pJnr8FS6TVEaoSDNPWXox4yiYQeZra7FgYusT14=;
        b=B3nsmWgxIHje0TDVugW9ufLSs8ySopnfKcwRqM6lpfxV/bUtZC4qugvk//W4ZMmdb9
         ukOYzyI9kiJxQlgb80NuzzdabUgWQqzc5IZECIykfj8hF12jBVJtnQvOBQDo0xfI73pB
         tKPAuEgXDxWrD7CpAFtRZWzltgYCKtQlsj75nUvxB9A0KLQFLIRhB7yCWsQjSNEjlSgb
         xAMjzsvzH5TCIpBhlnDUAXnzv4i9IphwfVJp1tf6cA1RPUqoI8EYrO3TLgWDro11R3NS
         osgmkc04ZY8VUFweiKCc8mjT7TKgnvb0YvMDwqSYlDxJngnCSCWfqPlAqW0cuUyxdn7f
         wn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-gm-message-state:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IuW4pJnr8FS6TVEaoSDNPWXox4yiYQeZra7FgYusT14=;
        b=GY7NKfYF7+rzQGd80wqbCMeuVJP1GkMc+2l1jxr9yk2ikQP7qpx9Xo02gsbb+irEMC
         lvkOTGw+a+zd5eLY8bSxcUp8XLQGZxzgtNw7xEIg9kofJTjv7OcMJv1YNrfsOg4irhn3
         FU/I8EWK5e0YfUhuCLECCgLiVq1H2Qrzfq/Dy8dmylt3O/62aIs3VOGeiHWzsU7+aVHU
         sUZJYRTJzbVMGuQ13zy1C/bqRpZymKK+N9FVNsiZina+62ECyOiBoFtO5Dryt9iV3Ka1
         QJg0x58VFuI55G4BkVwQFbNZbdoL0huwomHwpgKOaQjsf2pdz04AmmKoCY5PHsu8XEo4
         10LA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANoB5pmgQG9oRlk/YdJ/5x/XafUaqtz/4aKgZNsmZ/qYvg2Z4AW053ZD
	h2Msx3ljE+iLoQJR3p1o8AU=
X-Google-Smtp-Source: AA0mqf7jf1mfA7brM+uEWIvK8I6fov1OWzdsLgz84OfGxzAHvg7EGOEW2Sqfcb7kfZs36vyfRfCkng==
X-Received: by 2002:a05:6000:1e1d:b0:241:c75c:6831 with SMTP id bj29-20020a0560001e1d00b00241c75c6831mr1870529wrb.16.1668844821811;
        Sat, 19 Nov 2022 00:00:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:5247:0:b0:236:8fa4:71d1 with SMTP id k7-20020a5d5247000000b002368fa471d1ls8174679wrc.1.-pod-prod-gmail;
 Sat, 19 Nov 2022 00:00:20 -0800 (PST)
X-Received: by 2002:adf:dd81:0:b0:236:88a2:f072 with SMTP id x1-20020adfdd81000000b0023688a2f072mr6163656wrl.516.1668844820405;
        Sat, 19 Nov 2022 00:00:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1668844820; cv=none;
        d=google.com; s=arc-20160816;
        b=XMfoVYdVbbTxw+sAuPpWsjpXAy3q94hPLcXCOGuarM3IRT9TDvf/J4m+6hOiqqSBHr
         FvM4RD56SJzhA+BnQ+EiPQYBRwCcZEKtxcRNcAHRM8+YMQ4y4ch+zly3Yuf1vMIf2cpO
         cgiMP7S8yQKwwp4hZ5UPU840UWqgMIJ4y1R46jYa9AzPYdrGprziZGaJhZOvRGlmWFdO
         dcEdM8JMSCzZ9y7fVtbQxplkoJmTi+2wDxp8Vh5qNDECWM/QvoHd3G5CGqif3wtkLXhl
         MpHYAuo9ANCjG9VHqDrhjPZqY1nncQzp+/W77EJLeycxAh4zZJSSBrfuP/ZFH8Zqi+/A
         DeFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=wv9HIggk3ZKcLIb3smrmikkms+PzuSKroubUuA0kk0U=;
        b=wALa6FAhl9YkL/UBCQ/nGPxW+kHXX73UySTK0o0+/vIjwvAt20mrCuf1MDlgoZlmQu
         f9WU+i+qU5YawnCPqYwEFXxbHHP76AlqctoisjH27Rd0FkI/aZbKGpDYQHNYpCscBeYU
         /fGJ/zwMFgsVF6aGZhx+nfm2CzkZZ9xGLBkNZN/TNdpTkoCBNtJsBA8mUjAZRObvj6H/
         abp+THX3b/VzXCGKMeLk7eCoIBU54f2o7ejTv7L/VwZll88Wtx3ku0Z92QPDwXpNylDj
         0Fn8P13fqynO56UiLuaqkaww3vJPvZAmMQrC4BxbOmKAnyIZey7nKczfkicF+EEdv8jC
         3FXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kkAq3lIl;
       spf=pass (google.com: domain of makelong258@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=makelong258@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id z3-20020a7bc7c3000000b003cf1536d24dsi217689wmk.0.2022.11.19.00.00.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Nov 2022 00:00:20 -0800 (PST)
Received-SPF: pass (google.com: domain of makelong258@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id l12so11694230lfp.6
        for <linux-ntb@googlegroups.com>; Sat, 19 Nov 2022 00:00:20 -0800 (PST)
X-Received: by 2002:ac2:47e3:0:b0:4b4:1324:6ed3 with SMTP id
 b3-20020ac247e3000000b004b413246ed3mr3319648lfp.19.1668844820077; Sat, 19 Nov
 2022 00:00:20 -0800 (PST)
MIME-Version: 1.0
From: Make Long <westfamilyfoundation8@gmail.com>
Date: Sat, 19 Nov 2022 08:00:08 +0000
Message-ID: <CANXRYAPA450f4T3wELUjeUH7fmKbKtY7v-Smh=OY3bub-XPqdA@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000afa1e505edce36e7"
X-Original-Sender: westfamilyfoundation8@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=kkAq3lIl;       spf=pass
 (google.com: domain of makelong258@gmail.com designates 2a00:1450:4864:20::133
 as permitted sender) smtp.mailfrom=makelong258@gmail.com;       dmarc=pass
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

--000000000000afa1e505edce36e7
Content-Type: text/plain; charset="UTF-8"

Hi

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CANXRYAPA450f4T3wELUjeUH7fmKbKtY7v-Smh%3DOY3bub-XPqdA%40mail.gmail.com.

--000000000000afa1e505edce36e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<br></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CANXRYAPA450f4T3wELUjeUH7fmKbKtY7v-Smh%3DOY3bub-XPqdA%=
40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goo=
gle.com/d/msgid/linux-ntb/CANXRYAPA450f4T3wELUjeUH7fmKbKtY7v-Smh%3DOY3bub-X=
PqdA%40mail.gmail.com</a>.<br />

--000000000000afa1e505edce36e7--
