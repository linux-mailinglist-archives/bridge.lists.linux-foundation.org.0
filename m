Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2999241204
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:05:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A364087D89;
	Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vs4JdyM3ZNVK; Mon, 10 Aug 2020 21:05:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2F6387D7F;
	Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9AA83C004D;
	Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8C694C004C
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 10:35:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 88BB7860FF
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 10:35:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rrtJoAr191Mi for <bridge@lists.linux-foundation.org>;
 Tue,  4 Aug 2020 10:35:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 27A42860F6
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 10:35:21 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id l60so1733501pjb.3
 for <bridge@lists.linux-foundation.org>; Tue, 04 Aug 2020 03:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2ca/QrowQ6tGL3YlTY/zRzYbbmOdjci7HQ5UaZxrd7U=;
 b=uhLd9SNImtAJuG345pumkWc7FFAQzZbxGRfbrVJwZOpFi4CFPdRWTGdoq2H3T0vOIf
 MaMUXqtaXYbapCXrNGKUHCPvOvPbH48p3S+Lh/MiWYGV70NumnYN01whEEXCcC74VfSJ
 O+pReSH2YR+ZeXiNNx+NYXjlSQwbhY19LtlSyzYFXKPo4O7Om7yX5vj574VhSms6uEu6
 ijHHACvc1QRuoqvMh/oNutsSd8CJAsXocXVTOQRMMuGbtKpzTcsUbMKndywIf6YmdZV8
 cDsbV5FXHNaBwFpLZF9sHJ8u/+LIDFjL7JU4YIg25KyMSCRnpW5U24qhJfGEVDtRBOpV
 0oBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=2ca/QrowQ6tGL3YlTY/zRzYbbmOdjci7HQ5UaZxrd7U=;
 b=HpyI8FV28DsX4/ysm9rdRCiIuS1mezDhhZEtP8zAer0D+RpB+s/3w+Pno/snwY+9Y3
 i3LPPqaKM3oXO3oIVWZ+c+TmTaOfeUmeg465V3x1cIvxcgxMctfVifWKVCw9zExysNJO
 nPV4lOvxPPxafj/q4j2vKNo2xwiHnMCkWi4fc0yuvY8sRqaElWC8DEwZex5vEPLf0Ofv
 sbUtUZL7k1dUBNPDlSVd+O8iMogAC7c1HyZsyj0lLyoJlEQz3rsOEITIoozTdD5ETq4c
 xE2F+POAIi0nVEFG52Jocdr7WhXUdh8VcBwxmzOKVT0UBlIU7pIaBq8HXzWkz8NQas2e
 6AMQ==
X-Gm-Message-State: AOAM532NMqMH2GH9hn0bYAwqGeNxQrn2pNepqGxModyXuOC4a/8SSX5/
 hvA3ScLzYDd5PqHo6guJmmw=
X-Google-Smtp-Source: ABdhPJwjcEZYdFXpZlVncxXwOGmBxS40h8pb5EBVuCCmMlX4rkSI/BzBmx2fZnLM03kW9tha0ACSQw==
X-Received: by 2002:a17:90a:6787:: with SMTP id
 o7mr3674376pjj.76.1596537320665; 
 Tue, 04 Aug 2020 03:35:20 -0700 (PDT)
Received: from [192.168.97.34] (p7925058-ipngn38401marunouchi.tokyo.ocn.ne.jp.
 [122.16.223.58])
 by smtp.gmail.com with ESMTPSA id z62sm22004085pfb.47.2020.08.04.03.35.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Aug 2020 03:35:20 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
In-Reply-To: <CAEf4BzaRKhJqFmXJEQy5LOjKx9nkPgAKHa3cesvywy2qqg93YA@mail.gmail.com>
Date: Tue, 4 Aug 2020 19:35:08 +0900
Content-Transfer-Encoding: quoted-printable
Message-Id: <1BA4E035-5045-4D62-BA39-F3990CA4EF1E@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-4-git-send-email-komachi.yoshiki@gmail.com>
 <CAEf4BzaRKhJqFmXJEQy5LOjKx9nkPgAKHa3cesvywy2qqg93YA@mail.gmail.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
 Networking <netdev@vger.kernel.org>, Roopa Prabhu <roopa@cumulusnetworks.com>,
 bridge@lists.linux-foundation.org, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 David Ahern <dsahern@kernel.org>, Yonghong Song <yhs@fb.com>,
 KP Singh <kpsingh@chromium.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf <bpf@vger.kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 3/3] samples/bpf: Add a simple
 bridge example accelerated with XDP
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


> 2020/08/01 2:48=E3=80=81Andrii Nakryiko =
<andrii.nakryiko@gmail.com>=E3=81=AE=E3=83=A1=E3=83=BC=E3=83=AB:
>=20
> On Thu, Jul 30, 2020 at 9:45 PM Yoshiki Komachi
> <komachi.yoshiki@gmail.com> wrote:
>>=20
>> This patch adds a simple example of XDP-based bridge with the new
>> bpf_fdb_lookup helper. This program simply forwards packets based
>> on the destination port given by FDB in the kernel. Note that both
>> vlan filtering and learning features are currently unsupported in
>> this example.
>>=20
>> There is another plan to recreate a userspace application
>> (xdp_bridge_user.c) as a daemon process, which helps to automate
>> not only detection of status changes in bridge port but also
>> handling vlan protocol updates.
>>=20
>> Note: David Ahern suggested a new bpf helper [1] to get master
>> vlan/bonding devices in XDP programs attached to their slaves
>> when the master vlan/bonding devices are bridge ports. If this
>> idea is accepted and the helper is introduced in the future, we
>> can handle interfaces slaved to vlan/bonding devices in this
>> sample by calling the suggested bpf helper (I guess it can get
>> vlan/bonding ifindex from their slave ifindex). Notice that we
>> don't need to change bpf_fdb_lookup() API to use such a feature,
>> but we just need to modify bpf programs like this sample.
>>=20
>> [1]: http://vger.kernel.org/lpc-networking2018.html#session-1
>>=20
>> Signed-off-by: Yoshiki Komachi <komachi.yoshiki@gmail.com>
>> ---
>=20
> Have you tried using a BPF skeleton for this? It could have saved a
> bunch of mechanical code for your example. Also libbpf supports map
> pinning out of the box now, I wonder if it would just work in your
> case. Also it would be nice if you tried using BPF link-based approach
> for this example, to show how it can be used. Thanks!
>=20

It is still under consideration, but these features seems to be useful =
for
this example.

I would try to apply them in the next version.

Thank you for giving me good advice.

Best regards,

>=20
>> samples/bpf/Makefile          |   3 +
>> samples/bpf/xdp_bridge_kern.c | 129 ++++++++++++++++++
>> samples/bpf/xdp_bridge_user.c | 239 =
++++++++++++++++++++++++++++++++++
>> 3 files changed, 371 insertions(+)
>> create mode 100644 samples/bpf/xdp_bridge_kern.c
>> create mode 100644 samples/bpf/xdp_bridge_user.c
>>=20
>=20
> [...]

=E2=80=94
Yoshiki Komachi
komachi.yoshiki@gmail.com

