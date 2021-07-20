Return-Path: <linux-ntb+bncBD4YJR5HUUKRBD7T3KDQMGQEDPY6CAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FF03CF93A
	for <lists+linux-ntb@lfdr.de>; Tue, 20 Jul 2021 13:54:56 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id h9-20020a1709027489b029012b7940c7c5sf1987687pll.6
        for <lists+linux-ntb@lfdr.de>; Tue, 20 Jul 2021 04:54:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626782095; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sgk0u4mRL7//AenG2uVcJ82iSLJHYbPi+EbpHWjy9z8pxh6qCiQmYLxPJbeV3xs7l4
         BYDC1HjM+dec8DEOZiLeuE86ZFFwSk9kAlsUiefZ2jK0qZ9bBdFmJejMpWTPIu54e3pR
         D4y05o6uJ7nPH8O70eBP4hSs1WUmVYbNxiuBjXiUzfCQ6DWGZRzevCNxFSQCARfWZIrl
         +ChtrqAq/WlYe/B9QXedJkawPakwZMj2M61eAYT6QkVZ0oT3wO6la4Gt3XCY2V2IpYCn
         1iCIizJYbKx5DN9elWKSB9GSMjyj+XgclGRN/MXOwmOpg9Z/tLNc3wRdvncvSU+9Y1Q0
         gg0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=TDlMiAhyveynDrpg6RcZMr4GJzv5XXTJ/pJS7UZAYgE=;
        b=MTwG0XhWN4U1LFyNEL/yxokMCfhUAUpzznY6iRf7R2JmsKl76PS4v9JJ5wOkvv1AM5
         aX+NIc776J81lbDSw0zqKeJP1QlEdKXgNoJlLBUkE4wBgdZbvKRSNtdx5bSEkmdr/QAi
         LaRhhM7sHx8VHcUyeRCVetVoidcvh0G6j6DRt+NB1EdFYFIs55voO3f+d38CHcZF8hW1
         qKcVnaLgo8KKrzac3mzrhasJ8Fjoq+bncXhQQkPUQgHt1Ny6kHgwfrm6o3fY98M96pbS
         4xAnjwV1bVRhZvEmabkh8BfsZYd7KKttxduLmkhgnGPCB3dtrSkWPMP0wUMi8LSfYeU6
         QVuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RjmlzmiZ;
       spf=pass (google.com: domain of jibonhsoanbdd422@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=jibonhsoanbdd422@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDlMiAhyveynDrpg6RcZMr4GJzv5XXTJ/pJS7UZAYgE=;
        b=igJuhQbWd88ga7d4Qtql7LvPAy5qUW7laWLjuvdrgOSQfbar6KGPjoFX7LOMT8Q9eO
         FZWgPVhSIXG1iUUtDTPFaNjF9s33c+N/vLJTUKfXTmSgi7YaF61XVLOsXdXi+PDG1WJF
         DQFL94O94zmhTjH1asgeHn02+23dIS6fsFYyZg17P//rgYuY+Pyn2b1q6+1kDWbYyS2L
         6cYbhv3MexpVkwE04NNcnokKq9h+nmq1XnLNJOxiSi7Tl4FZcAGmKGr6VDUVkAB/Mk/I
         gwcdvSMbYLE2r8yY1vNqh8C8gWWbxXKm3ivN4cgGQet+o98wvxUNi7MtnumfLZamvx78
         0BCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDlMiAhyveynDrpg6RcZMr4GJzv5XXTJ/pJS7UZAYgE=;
        b=lgETnW5zjliM7VqjKmJUiUfmDj7u6fy5k2VVc3LDmLdVae35IJqyO3TSsU5mgP81gW
         AjdYloXtlDW5nH7WU09IgYWU+eBSUUO3PA2HHKorZUfAFgAWzQFv6pYmedcY9/67pxNw
         8BDnoi0QUC0zOsvirEdWSVMWcJR7uVyGE0JTUtpCOA6o6ZxRIFP6UVc2rFtF+qXLKTEg
         odm+2f9zV5ZIgjpVTlmmdifkwvwk+qAVGggxnilX7vaD/EKv/W86JO9b3H0jFSqfLL/1
         g5pzzIYp10PLZfCtRMzmMvYV2sTL5XyuSAT0zfdH9JaLsdukURnl4mF0OcN55JTay2N8
         j/JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDlMiAhyveynDrpg6RcZMr4GJzv5XXTJ/pJS7UZAYgE=;
        b=nEjQpg5IB8MNfxZhvZHgI9ADDJHomBv3vToD5M9GAjFBGMzT/fvo8GjK1Ue4rutxyn
         WiV7NiPwCGtWx5BpI1OORtitBB5692mQnsFIgAB4aW10cC9PWabfr2OSvSZbPcWIi4Qk
         CphfP2I9GInVyoKqLZO4fpxCtZyXuz+tjUk/KEqgUpPqpYtnzeW9bdVJjOhL3ecWtR9L
         oSI0t+YGEtsE0vj7UGDPvcLwmJXHwxMtzPTBb81FvOuHimoenIZ4l98EQPlQLBTCjFj3
         xIsWt7WuzsMj6Y7/4g0DfXzsfUHgTsGBPjyIU+x/D8xLqPbfIKWklZuOtxBpbfhW0Lvr
         yJCA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532tCrto+bjuN2iNoLVgzU7EwlufZ3jfF6TR1UC/D58f0rufwF4A
	kWVDTM9vFDBo/HJG3eZq5aA=
X-Google-Smtp-Source: ABdhPJw1mNLoDSZ6D0jZ+n6wYFSeK7JtSNfFsZD0MBvoaphxdeO6bt4k2ZFOP84voCRAm+1oJETuzg==
X-Received: by 2002:a17:902:7d91:b029:12b:45b0:736b with SMTP id a17-20020a1709027d91b029012b45b0736bmr23006034plm.79.1626782095621;
        Tue, 20 Jul 2021 04:54:55 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:1cb:: with SMTP id e11ls3402369plh.5.gmail; Tue, 20
 Jul 2021 04:54:55 -0700 (PDT)
X-Received: by 2002:a17:90a:8912:: with SMTP id u18mr30137586pjn.90.1626782095006;
        Tue, 20 Jul 2021 04:54:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626782095; cv=none;
        d=google.com; s=arc-20160816;
        b=VM6XVo18GPAIJbCzh0c2Z1SeXuoDJV6rmqovZmXxHia2SY7IKrBg6TOvHvGM3kZafH
         Tyztq/X/tCiCITxi+i2nuAAfYeC4+0e7FQqx00ci6nwScwhKaRLqHxIY/RzaW73geQ+5
         qT185kK2O0AbO1I7WmFMgwivdUdR/6R4dFkROtlrW18bBkOejGPi1yLOfrFhmTYPqVip
         lqTN1gpJ+CPkjLKtDGOyntdXRXWw0nwYwYcyFSFO+MyD240buvTUFc9vllMu8rrRZf1k
         1jaaStq4SLytKlIzlojFLhm/hPudTozrlQvcgmpGir/2id367ggQdE45P1j/CpfE0cnr
         BOIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=bv/is8RuB0+XmGB+1scHk27lq41JVqQOrWHZfiXFbWg=;
        b=frxwCscSPLzvxXLP9sAfxEl2xcR7SgpKTTSvZsj0h1qk+TgaDLzpkQ3M89xjdRIL6d
         TXSQXNaWmT8DBpL8OgoVKu5YuP3MefmL35fg7LWsEr0zR2a9VLWOx1EGFv4/zGvomXhT
         sZg8qqanTNansrGHukDE6PIxUUFyLPz6UDnm0BscCaFFbRlqA0AEx+C1i/Qf3yYrWNcL
         gINKePGACv/2DW6t3lWj7RZ3iIeqKIXdCV4wp4Y5F+YrmQm7jXnS9T0sA6opF7dwzdAE
         8JfmfIJZEVMELJT7rVh+fnjRNLskMMjU3NMBFMeT0ArfXiFHAfDykNGNJVDL9SLnvipk
         2s2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RjmlzmiZ;
       spf=pass (google.com: domain of jibonhsoanbdd422@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=jibonhsoanbdd422@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id p9si2095593pfo.3.2021.07.20.04.54.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 04:54:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jibonhsoanbdd422@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Received: by mail-ot1-x32f.google.com with SMTP id o72-20020a9d224e0000b02904bb9756274cso21290371ota.6
        for <linux-ntb@googlegroups.com>; Tue, 20 Jul 2021 04:54:54 -0700 (PDT)
X-Received: by 2002:a9d:2d83:: with SMTP id g3mr22010126otb.228.1626782093778;
 Tue, 20 Jul 2021 04:54:53 -0700 (PDT)
MIME-Version: 1.0
Reply-To: chusakjaidee2020@gmail.com
From: "Mr. Chusak Jaidee" <jibonhsoanbdd422@gmail.com>
Date: Tue, 20 Jul 2021 04:54:42 -0700
Message-ID: <CAO9vXe22Fm5KkJ9gR+2hL+iKD-QEs_swJQvjEJ99v13Tg3JUtg@mail.gmail.com>
Subject: Hi, Did you get my mail?
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000d3a56305c78cb877"
X-Original-Sender: jibonhsoanbdd422@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RjmlzmiZ;       spf=pass
 (google.com: domain of jibonhsoanbdd422@gmail.com designates
 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=jibonhsoanbdd422@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000d3a56305c78cb877
Content-Type: text/plain; charset="UTF-8"

Hello,
How are you doing today?
I sent you an email yesterday, did you receive it? It is a very
important message, anyway reply back to confirm that you already got
my message to enable me to give you more details..

Best Regards.
Mr. Chusak Jaidee.

Sent from my iPhone

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAO9vXe22Fm5KkJ9gR%2B2hL%2BiKD-QEs_swJQvjEJ99v13Tg3JUtg%40mail.gmail.com.

--000000000000d3a56305c78cb877
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Hello,<br>=
</div><div>How are you doing today? </div>
I sent you an email yesterday, did you receive it? It is a very <br>
important message, anyway reply back to confirm that you already got <br>
my message to enable me to give you more details..<br>
<br><div>Best Regards.<br>
</div><div>Mr. Chusak Jaidee.</div>
<br>
Sent from my iPhone<div><br></div></div></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAO9vXe22Fm5KkJ9gR%2B2hL%2BiKD-QEs_swJQvjEJ99v13Tg3JUt=
g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CAO9vXe22Fm5KkJ9gR%2B2hL%2BiKD-QEs_swJQvjEJ99v1=
3Tg3JUtg%40mail.gmail.com</a>.<br />

--000000000000d3a56305c78cb877--
