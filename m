Return-Path: <linux-ntb+bncBCW73DN2RYFBBY6YU7ZQKGQE2H6TZ5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D55182A14
	for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 09:01:40 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id a14sf671591ljj.15
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 01:01:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584000099; cv=pass;
        d=google.com; s=arc-20160816;
        b=JBAgDU/S1BNi8BuStqTb2bbsnmMQzLwDMRJkfuU2GVBrMQhUjti8JEKZRdEKmGTOmj
         uKV8QhRC3EQQyTgyTfGQZUglcRmqLC7toSihRxNBy0T6lOQQwnHmyZ3x1vX1Ljw1lxyz
         HsJgevcNuWuTrfIYLqU8F7/jwyGQbLBrzz/Ov1i9lSm29v0x7sWaWn1cThGzhXFDz0Co
         caPUoUnWot2IMbjQiV5H8o2TN/FvszLgfsV4B7tXCM/oL+CN799v3soHkyvRWBtlALQk
         oTh/cNWT0fy4cVxbXyYJXwB3K5lmf2uUsOF5pq6DUQttsPj4jqPJlWT+qnwxV5A/UrhR
         vo1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=MC/Ldm9YGsQUkcjVOabtH778AfqaQ17hkR3t9CyCIes=;
        b=kthhQYn2Q0fGhUaGuALSwLQXqUuCpcz84orpF5qK39aJDDXUJUOlwKzGHmWtWK6MaO
         EzvM58ChhfxWHGTLHW4QPn5KoDuaE4y3mQUScaACs7G61T2h1TeOkR0CIicAlalV5S0O
         WEL83LMEJ6X5JtTquNuSoQxQ9WLv24npFj/BQKUn4nxafsBeRzYSHhbxwvVNFLe/xlC0
         YL9AGet3mQSAuPqpJUrBk3VPzDqL33KiTbAwg81BCZFLF/3vHAqSPpCzm4rVBJXFsiPE
         JkhmW33UMUxjN7N9zo7TXqoVlKnYUEm70qgZs2IYXS9cAUVdlCfZgTLqTJot80MNJhpo
         4vVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=S5pQfgbO;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MC/Ldm9YGsQUkcjVOabtH778AfqaQ17hkR3t9CyCIes=;
        b=phkhrTUDnm3bpyaM4UVrTUEq57WL8BeiED32WNowdTLcrUnlrRAeCN6RVz9BkR9IOz
         KjWj1A5PvNDz1xUZ1zYYLC2otmOWmmP0sGuPOyOccKKi0IPgVbJZJh7D6FUaU65XumX0
         ICz7vzunoPRjQudSViu54vfJd/9gmAScCfQx8JfZSn/KK/hSOicabeRKwdDj3Flif41n
         4UwIOZh1VlKqqln8CKqUr3Bs0nBkzl5BsvfDCLDnBuMW3YsO4+PxbhSDDVaI24vctPgN
         oLLLGZpR5c9GSRrjl6B7WDDyoBmipWmc2dZ5rVvZ26vxNEehwnK4rxOsCnnUClX3YmrD
         UiXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MC/Ldm9YGsQUkcjVOabtH778AfqaQ17hkR3t9CyCIes=;
        b=sEy+Sw1fD/p7+zQl9k80x0hYDCF7rPFye34o5hBf+dfmhXq2jq8XBW8zjuTtbEJMWx
         G2GnVWOEW6cGQqtqpQnAQjaTWINIiXKlo3JYv/ocqsPPPkFiXCRKGafJJWfh9vZ9O344
         2C3zo4ghjcI3QjVBI2lX3Rz6oYuugXcrzqa45V1lE2pQS/wCkUv7PvXBbQd+gmlrvXsA
         RzDLlsoqCVmGp6GI0SBbRmKrLZ1bYf30vGY2461Wms2z24aQcl61iT19TvNzEVVrTaUs
         LLXU2zaoDZp6Gc9XlGYBWT/EnDOX//qSOBVmNamV9dH60l1w5ZgemCI6ipd+1SWI4F3K
         DXyA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ2PgVg1WGva49tHuIPsNsy7j6yrDnXWhpWfjhJ9RNXb47Xc0JYS
	RbET3qX1mTL61DB3/j/bP90=
X-Google-Smtp-Source: ADFU+vsBWTdDe5urqAkofyviqXo6l2N01hleERZrKVwI8qtI08FNkiUdOrPWHVH/y31MpbLqZmVxhw==
X-Received: by 2002:a05:651c:112c:: with SMTP id e12mr4657285ljo.7.1584000099706;
        Thu, 12 Mar 2020 01:01:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls900536ljn.9.gmail; Thu, 12 Mar
 2020 01:01:38 -0700 (PDT)
X-Received: by 2002:a2e:6a12:: with SMTP id f18mr4582587ljc.71.1584000098788;
        Thu, 12 Mar 2020 01:01:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584000098; cv=none;
        d=google.com; s=arc-20160816;
        b=HhjyARFTASHhG3dDOTeR85Gx9jNDWHgbutXNMjP4uZcwC3rpcX2SUox/HQ+ZMXQnI5
         4M+tfgsT2JnSNyikWoRKFkOG5BFyJ3J7xbO5NSTAzB0ySXnmPZ0lqTtQJj0qfNYr99W7
         QIV4MLgdr9L40EEygUq9agW1TVWR6sAqywJXHEw01mal6PuZjeIHLT7UygFk//WJ0/j7
         id6YzBHy+lOvvftF+ppw4KUfF5bh//evbp17X60+qQWXGyGHsqzUBad+OEfK9sOmNbi4
         MR5Zb442Tj+pRZl5HqNssekp6ZkFOUcPL6VvVF+D/hQaqd/jIIJVdc/00MlI3yHkL2f4
         J4Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=rlvXrsquCgOAoL6m3j4naIDiZk45jPg5qzfaHkH6ylc=;
        b=E/RnYZ+3hrtQbDAW7glrynbmhfrPlPaRovPUd56rifcvUqSJO4ilzRt4b5zNK9S9SA
         xqjru1BiUU7HkGbyM31QMisHfz2Qle7T2VtxkjWZ+XCkrQ/XYhNYf3FxJgCVc31c7lSF
         BsXwq09oXi7GK3DV1OKLKGo0/cQBCXoQu5GmSkZ88B68jhei9nyt/UNGccO0iFapMSsX
         B4FHgPeomXC8GcK10ArJOZQwLMHOuhXy4Mkz01olFkWXg7TayDECCcmSER04c14yEp0C
         Kfy+UKXFRbGm+wx1L38uORXG3BmQX2YA3yxpnCETdeUOKJjy6p8XgtVec0XKxqX5CrYK
         RnuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=S5pQfgbO;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net. [194.109.24.22])
        by gmr-mx.google.com with ESMTPS id d12si222768lfi.2.2020.03.12.01.01.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 01:01:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) client-ip=194.109.24.22;
Received: from [192.168.2.10] ([46.9.234.233])
	by smtp-cloud9.xs4all.net with ESMTPA
	id CImQjXGct9Im2CImTjipFx; Thu, 12 Mar 2020 09:01:37 +0100
Subject: Re: [RESEND PATCH v2 8/9] media: fsl-viu: Constify ioreadX() iomem
 argument (as in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>, Richard Henderson
 <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri Slaby
 <jirislaby@gmail.com>, Nick Kossifidis <mickflemm@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Dave Jiang <dave.jiang@intel.com>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-9-krzk@kernel.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <1c4a11b5-5ca6-7555-de3c-ff30f707fac7@xs4all.nl>
Date: Thu, 12 Mar 2020 09:01:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219175007.13627-9-krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-CMAE-Envelope: MS4wfB1zxMJIE7wElbGm4sdMecyYLJ6LdsDMDpZDeSQuVKwPm0HLBt9h+mOdrGXFuIDkCI9Ox7ukCv0Xr+wsEhOQPNuuqPOa2tbCK6oF1PNdZVqk6thKvC3h
 xE4aE9bNSUWOFhWxTazaeGPVr5hr0AhveAgdpPWZHpjhg5PxgtKgtRwcEM0X31YjusYjKeuEG9QF/4JOHzjohAIjiR+oAI0nyED+Jez9yI4FW1ZB3LXkp8TH
 7MMndY8iJadjMhsV5+oGTHeP7z8vzm/dZU83psQzhxRsPonohHX17/JsKF2l5MFAT9+97UKYOiKAsfrv1Cpys4Ae5wkTvdw4qsE49ssk4hjAoyha0QB9BVju
 9SGy1FrSenK0frRjbC8NaYY9ZERWNSiNH5LA36WXT5yWf3v+Qcv3MkgEimaOp41P2nlVLuOjtsbM7Oc0IE2oIVVfFA700ZJiP3znlyaVddewRuZDpRVP7LaM
 BmiWSHGXgw8YtQmC7z4+FTtlDdPcaOnURURbGtwGqrG9ypYOfWaczdFyon9cFrdpqrNkvqRjWmqFa6YgsB57xqLqvFfcZaXIx/5GPRUQudUCvZPJzisakVQc
 uttKYb/aM3WYuhJM4Wb1Pv6BrMYMIVXGCFsOBd7W/xp0N3iMBGSYj0Aa0rPNR8hHdzbHBC2fjWlNKKBiBqoznNqCGZ0CiVQoEM+QtyRRgiYnx6PeAm5PLOc4
 VNFQmhkOpnD9IFKzOg7MDbXsSwg+OAG64qEuG/VscrSiDVQ1yjv5knp7CxhKGvYM4OpGHYT1Er7Bdx2FCmXu/yAwSbBDRagCD0kotDKUph18wrkxxeFljDJA
 LSc1aSxY7WzE0MoB4x1WWy+jz94FDlyhtSMwiZ6y0dJP3+c2+Q5En242uHE069S9l+7oW8v5MGbWOStqt5f3vSjCb7LIzWN87JmuP89GFWwWLJsughS7GMyf
 9DHMMrFLvERXtynUPrxsXWOFJFYcfPWtUSuDRlT6lyW4OqviXxQxmuwWWPzBiEuN74qNtI+js8zLo4yvgjsgXCeSGNoTx+kuEqyjk5W1UzIpidGK0CRrnVbE
 6hD9Y/vETMZdaCRGTPOlU05njcJF+46w8BJ3SNj0Py3qBk1dX7c6nBfbFypmWYBFmuncdfgfV+GvZgph5pgPHOoQxVCf/tLCrfA6lP3T+1yMX4df+BQFRKLS
 O4WmDF2MxF8KloewGsYz/rsmgB25E6V0YSDc8EvmqseT2P6A01f6bsdZt1AJnufocp+H44s+qhBR6buNUUMphP9KyIyYuNbtmFvkGTyK649jUP2q8Nik1rK1
 3AqiAYrtsks7Dqmq5Qj7chR5DBva/WjXbTAi9lRBeyrc1LiDTAHtFBMmOGm8QJ0PstgU+Qss/H31YuyO+vowQc/YkfqDiEmsIU7MZy0525QlKJCDuomrR9k/
 pt0L69OpaODhDI2GKeTabUJfloUo1rGwDFifFZ3GiczPZsdGrTGULzWF8ZqXdk44Vxmf+o40QJa4goBPwv+YDuim0xPrbohAaaGJnTcviLLAbx0Be2IOpJK7
 066IFrJvKfz7/Wp2S67JJX5FtbO7VF+IrVN/N63uvfJb+FM6hLMjwGqczE7h5AhCTMRfIsHhAU9mTIYVyLN+UBlZ3WL3ahk0SjumGQqE2df8rbpt41Yx3WFA
 IW77guEXBH/AFWkGJEIg2a3N91fXva0TdPJAF0YzlkCOnwCmb9/Naw==
X-Original-Sender: hverkuil@xs4all.nl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@xs4all.nl header.s=s1 header.b=S5pQfgbO;       spf=pass
 (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as
 permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
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

On 2/19/20 6:50 PM, Krzysztof Kozlowski wrote:
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
> 
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Regards,

	Hans

> ---
>  drivers/media/platform/fsl-viu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/fsl-viu.c b/drivers/media/platform/fsl-viu.c
> index 81a8faedbba6..991d9dc82749 100644
> --- a/drivers/media/platform/fsl-viu.c
> +++ b/drivers/media/platform/fsl-viu.c
> @@ -34,7 +34,7 @@
>  /* Allow building this driver with COMPILE_TEST */
>  #if !defined(CONFIG_PPC) && !defined(CONFIG_MICROBLAZE)
>  #define out_be32(v, a)	iowrite32be(a, (void __iomem *)v)
> -#define in_be32(a)	ioread32be((void __iomem *)a)
> +#define in_be32(a)	ioread32be((const void __iomem *)a)
>  #endif
>  
>  #define BUFFER_TIMEOUT		msecs_to_jiffies(500)  /* 0.5 seconds */
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1c4a11b5-5ca6-7555-de3c-ff30f707fac7%40xs4all.nl.
