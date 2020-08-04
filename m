Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4E224120F
	for <lists.bridge@lfdr.de>; Mon, 10 Aug 2020 23:06:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A63A87A11;
	Mon, 10 Aug 2020 21:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ImXXi4DIAI63; Mon, 10 Aug 2020 21:05:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0B36878EA;
	Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D1342C013C;
	Mon, 10 Aug 2020 21:05:28 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6718EC004C
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 11:27:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 487052051F
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 11:27:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KlUqF3E4+J4a for <bridge@lists.linux-foundation.org>;
 Tue,  4 Aug 2020 11:27:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id B976D20107
 for <bridge@lists.linux-foundation.org>; Tue,  4 Aug 2020 11:27:56 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id mt12so1789741pjb.4
 for <bridge@lists.linux-foundation.org>; Tue, 04 Aug 2020 04:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=XtwssimjTTniuQl7LijmcNMg2apAbM55NqsMay8jLHo=;
 b=A9fr5HFU3lf8zSg+CMCJqO5u+Rhus37sWFZBf/pso+4kMD9Fv+1sdUpvwYClICy0zM
 /rfOHlQ7Y+7inApqU6w6O+j3zte0QSP7uQIdg6ZHeooAVfgStadr/Ntiza7mYYTmKCWo
 S4MwxfjfeD9U5bmSvg51VEw+aIKInU9YwTNnK8VrKbKCBF2xrqiJFvaviOoSPorKtxr3
 IcKc/BRbvVxzdS8u7KPEEBDS23ecJKXSG9/nlpw0uTU5iK0spuTOn2Y0HL+tx4j2hmqB
 4a1XHahqhwx9a2DXP4/u6RS1d9rkOrdIixjgYntLANqgwWWHFSq0T+ZpYhTW/ppGp5GW
 6IUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=XtwssimjTTniuQl7LijmcNMg2apAbM55NqsMay8jLHo=;
 b=qiOnLW2MILvXYgggTCGaIDax6eLdBKkb1gFhCfvQ9yLD08FTGwmefkvOwCwLmBu6JQ
 mOxYehuIoiLrCF/P0BTdFo+gXd2NK7CSrJ+iB/O1lTsH6kHfGupZSFgVyABDOaSbRAPF
 Es1v8aOGK1WjDJ5oZCzUd6XFNLrcFiQLoiBj26lsjnptuMGNHfeadY/9WdAw6ImgjW1Y
 Vl2PW5Vi8CTrjHL0r8AMI87sF4TFvs//DOtGOmcOCpV/a2z3RilrzitAZPT+sqQEpfMZ
 3AG9zdGN7nQ9q15tjRc3vkAwsuxQLkP5vceeTNg5NyZXwhOXEqZlYk8owUDolo6p2pKF
 mBXw==
X-Gm-Message-State: AOAM532WursdKIRsAbryW8JBkEUd/ztcMU0nJioQfmireJa8P303ov9P
 0OvCaYTyD0BcjU8bfqODUoY=
X-Google-Smtp-Source: ABdhPJwsfFZK8aQeNW4ZbNv7QRfGEMuHZOB7C8ZEo5CdZNGJGZVbDMyxLfPFSk4iwVWkMzsEvSRkGw==
X-Received: by 2002:a17:90a:e2cb:: with SMTP id
 fr11mr3903893pjb.236.1596540476311; 
 Tue, 04 Aug 2020 04:27:56 -0700 (PDT)
Received: from [192.168.97.34] (p7925058-ipngn38401marunouchi.tokyo.ocn.ne.jp.
 [122.16.223.58])
 by smtp.gmail.com with ESMTPSA id bt10sm2162713pjb.39.2020.08.04.04.27.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Aug 2020 04:27:55 -0700 (PDT)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
From: Yoshiki Komachi <komachi.yoshiki@gmail.com>
In-Reply-To: <5970d82b-3bb9-c78f-c53a-8a1c95a1fad7@gmail.com>
Date: Tue, 4 Aug 2020 20:27:47 +0900
Content-Transfer-Encoding: quoted-printable
Message-Id: <F99B20F3-4F88-4AFC-9DF8-B32EFD417785@gmail.com>
References: <1596170660-5582-1-git-send-email-komachi.yoshiki@gmail.com>
 <1596170660-5582-3-git-send-email-komachi.yoshiki@gmail.com>
 <5970d82b-3bb9-c78f-c53a-8a1c95a1fad7@gmail.com>
To: David Ahern <dsahern@gmail.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-Mailman-Approved-At: Mon, 10 Aug 2020 21:05:23 +0000
Cc: Song Liu <songliubraving@fb.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, David Ahern <dsahern@kernel.org>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@chromium.org>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Andrii Nakryiko <andriin@fb.com>, "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [RFC PATCH bpf-next 2/3] bpf: Add helper to do
 forwarding lookups in kernel FDB table
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


> 2020/08/01 2:15=E3=80=81David Ahern <dsahern@gmail.com>=E3=81=AE=E3=83=A1=
=E3=83=BC=E3=83=AB:
>=20
> On 7/30/20 10:44 PM, Yoshiki Komachi wrote:
>> diff --git a/net/core/filter.c b/net/core/filter.c
>> index 654c346b7d91..68800d1b8cd5 100644
>> --- a/net/core/filter.c
>> +++ b/net/core/filter.c
>> @@ -5084,6 +5085,46 @@ static const struct bpf_func_proto =
bpf_skb_fib_lookup_proto =3D {
>> 	.arg4_type	=3D ARG_ANYTHING,
>> };
>>=20
>> +#if IS_ENABLED(CONFIG_BRIDGE)
>> +BPF_CALL_4(bpf_xdp_fdb_lookup, struct xdp_buff *, ctx,
>> +	   struct bpf_fdb_lookup *, params, int, plen, u32, flags)
>> +{
>> +	struct net_device *src, *dst;
>> +	struct net *net;
>> +
>> +	if (plen < sizeof(*params))
>> +		return -EINVAL;
>=20
> I need to look at the details more closely, but on first reading 2
> things caught me eye:
> 1. you need to make sure flags is 0 since there are no supported flags
> at the moment, and

Thanks for your initial comments!

I will make sure whether this flag is required or not.

>> +
>> +	net =3D dev_net(ctx->rxq->dev);
>> +
>> +	if (is_multicast_ether_addr(params->addr) ||
>> +	    is_broadcast_ether_addr(params->addr))
>> +		return BPF_FDB_LKUP_RET_NOENT;
>> +
>> +	src =3D dev_get_by_index_rcu(net, params->ifindex);
>> +	if (unlikely(!src))
>> +		return -ENODEV;
>> +
>> +	dst =3D br_fdb_find_port_xdp(src, params->addr, =
params->vlan_id);
>=20
> 2. this needs to be done via netdev ops to avoid referencing bridge =
code
> which can be compiled as a module. I suspect the build robots will id
> this part soon.

I guess that no build errors will occur because the API is allowed when
CONFIG_BRIDGE is enabled.

I successfully build my kernel applying this patch, and I don=E2=80=99t =
receive any
messages from build robots for now.

Thanks & Best regards,


=E2=80=94
Yoshiki Komachi
komachi.yoshiki@gmail.com

