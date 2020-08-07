Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0000241212
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2967A878F1;
	Mon, 10 Aug 2020 21:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bFT03-7d2-pY; Mon, 10 Aug 2020 21:05:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id D24F18793D;
	Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B7F97C004D;
	Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 59381C004C
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 08:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5589588841
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 08:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id woW+MAxYAPQ5 for <bridge@lists.linux-foundation.org>;
 Fri,  7 Aug 2020 08:30:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FE0A887E9
 for <bridge@lists.linux-foundation.org>; Fri,  7 Aug 2020 08:30:24 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id k13so705334plk.13
 for <bridge@lists.linux-foundation.org>; Fri, 07 Aug 2020 01:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EVtHDL3zK/M7ogfJLTnbqUj/+R1pnCu3LmpkYrXn7WI=;
 b=Us1H8RGxl87Uo//uGLeMoVDoUUO7W76DnC/ipQAIIFV8i6WnVTplLysjyIoSaotcVm
 BinZfOIVf1SRbwpyuGfHnCC2LizudABFRJX3N/GbgqBZtjeXnKFzd9bp1NUfEkfmSDD3
 484fJybh/iCN6DzYi3W3P6RgJTGDrpTair67iLqu6WU6aZOG3llDGadYM2ik0OS9xXTg
 o2ro+Txb4QQutHAp564nZWJId0a8eq35hIKo6/bilITKuDiWYMpcA8xN7ccHTPJgzbYV
 omIq5Wbf2uOdQsV5oqHHgzPYhYsYKJnUZNZuYBxIOGMpNGMbHXTP+Z5H3B64Sj3Eofdk
 benw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=EVtHDL3zK/M7ogfJLTnbqUj/+R1pnCu3LmpkYrXn7WI=;
 b=Ok4bLXxUNK+ehrOEsxRBlWbvP5swD3zoj+MPJIsbXFqVvBK8sdpVSZ56d8rrPsCflZ
 7C5Re4iZeG0vnOK3CU6FjNyLKv8n7IlAncU2LrR/RcIwMkEPTMLCJblCLPinxnLdbOrS
 tOUHAIqHH5+mmTCMrnVpNm9gS04W3ksulx27yhROD1e7LqIn5xgOgV9QNntKZlep0Z/2
 Ph6QympoVEIt8RZ7fpcdZJ2xiddJKXrCqwfEerPQczxSD+v7yr2+aGRb8a2WlDhmiHsF
 A3yyd9hDaB9DyrLvQir1X2mHDnPCNMNYWQhLqj/r9Zg03t55bCJIiKsHePSuAwbWWw+7
 e0WQ==
X-Gm-Message-State: AOAM531EPdgoCOBG9MMrF4ixctmUkgHV1mGk38XT4xN7T4L01bHluS/z
 VGZ0ogBILeJEnOzafN59cpQ=
X-Google-Smtp-Source: ABdhPJz5ThbGz5vV2hquuWQrvlmTQ+agJ5HdSfWVCMQTldu98q9WqTSO342EMngzNRtjvHt46p9kXQ==
X-Received: by 2002:a17:902:8b85:: with SMTP id
 ay5mr10806177plb.162.1596789024095; 
 Fri, 07 Aug 2020 01:30:24 -0700 (PDT)
Received: from [192.168.97.34] (p7925058-ipngn38401marunouchi.tokyo.ocn.ne.jp.
 [122.16.223.58])
 by smtp.gmail.com with ESMTPSA id x66sm10585855pgb.12.2020.08.07.01.30.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Aug 2020 01:30:23 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
In-Reply-To: <8eda2f23-f526-bd56-b6ac-0d7ae82444b5@gmail.com>
Date: Fri, 7 Aug 2020 17:30:16 +0900
Content-Transfer-Encoding: quoted-printable
Message-Id: <901DF60C-F4DD-4125-80D6-128C1764424F@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <5f2492aedba05_54fa2b1d9fe285b42d@john-XPS-13-9370.notmuch>
 <E2A7CC68-9235-4E97-9532-66D61A6B8965@gmail.com>
 <8eda2f23-f526-bd56-b6ac-0d7ae82444b5@gmail.com>
To: David Ahern <dsahern@gmail.com>, John Fastabend <john.fastabend@gmail.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Networking <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, Alexei Starovoitov <ast@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, David Ahern <dsahern@kernel.org>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>
Subject: Re: [Bridge] [RFC PATCH bpf-next 0/3] Add a new bpf helper for FDB
	lookup
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>


> 2020/08/06 1:36=E3=80=81David Ahern <dsahern@gmail.com>=E3=81=AE=E3=83=A1=
=E3=83=BC=E3=83=AB:
>=20
> On 8/5/20 4:26 AM, Yoshiki Komachi wrote:
>>>=20
>>> Just to clarify for myself. I expect that with just the helpers here
>>> we should only expect static configurations to work, e.g. any =
learning
>>> and/or aging is not likely to work if we do redirects in the XDP =
path.
>>=20
>> As you described above, learning and aging don=E2=80=99t work at this =
point.=20
>>=20
>> IMO, another helper for learning will be required to fill the =
requirements.
>> I guess that the helper will enable us to use the aging feature as =
well
>> because the aging is the functionality of bridge fdb.
>=20
> One option is to have a flag that bumps the ageing on successful =
lookup
> and do that in 1 call. You will already have access to the fdb entry.

It seems like a good idea to me! I guess that the flags in my suggested =
bpf
helper for the FDB lookup will be useful for such a case.

Thanks & Best regards,

=E2=80=94
Yoshiki Komachi
komachi.yoshiki@gmail.com

