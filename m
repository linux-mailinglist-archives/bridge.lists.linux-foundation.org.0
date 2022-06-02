Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E637153B8C9
	for <lists.bridge@lfdr.de>; Thu,  2 Jun 2022 14:08:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 551F141529;
	Thu,  2 Jun 2022 12:08:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hC4d9bqVn6gk; Thu,  2 Jun 2022 12:08:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id C391A41545;
	Thu,  2 Jun 2022 12:08:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 731F3C0081;
	Thu,  2 Jun 2022 12:08:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3A6E9C002D
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 12:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A63C82B1B
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 12:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AWFEbXqtochf for <bridge@lists.linux-foundation.org>;
 Thu,  2 Jun 2022 12:08:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67D7B82AED
 for <bridge@lists.linux-foundation.org>; Thu,  2 Jun 2022 12:08:47 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id m25so1700471lji.11
 for <bridge@lists.linux-foundation.org>; Thu, 02 Jun 2022 05:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=QdNf1+ADCDYIFdMt/u0EWuhJR3TaXSiM6WxoeP7Eubo=;
 b=Sr4MSscJ3lDmLRDowY0p2F36myUdh5acadCAYqP6y6lRile9Ir7mBytU3OgIgUFZUF
 1CZmrb7YxF0A/b4XWk+rLAlmOMiQjL46TOhhS7qsB53sWCKLsbpKldE6N0S+YBplVoLB
 sBFlPQHIBjuSbG9EpX2gv1OPch3Sk2FPoFD83yjh3A0AQcFC+VJSX/x8knhDDr8Slx3u
 fNNpeIEbuIkrcndC7Dvct4MzKA2XSMmQWZ8MfgMcux/h4yPji5DwAZzb0jiCg572EYsm
 XrKx+EfbQEcGjMEUs/Rmc8WtDaD0J5+3bRqRVXOgWRlbpgBWbh6Kwc1zXesWIptqZbP+
 VjbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=QdNf1+ADCDYIFdMt/u0EWuhJR3TaXSiM6WxoeP7Eubo=;
 b=Fbyfrv4pYPSHBK9oKuLTqr2K0q9tJGKJAlwBTEwpk78S61XRRBlcf9sVTRRc2NyfTU
 kkITkcuKYNRmYgaoxaMTOGZSS7z2Do9rbPNvnMTQeEP61Yti/ztDM3GxzK/F2PS2gBvQ
 KKD09yF7GJHXd14Fel/1fzriDWZjaRKnwxviAfej8981tO9kGbrKjLlVa8d7YUhXiE/r
 GfijjQxL+seLnN/K8ZAeeeNVZD8YZf7JEc8Gqvxjives9Q9nav8/TU6XX+mIliz4gYML
 LnbisiRI8+85ly7F+m1lrQp2eABEwQAMtpHV98+qDu2EfLKkWvWMCjgyjYFbBThSkRNc
 K1PQ==
X-Gm-Message-State: AOAM5307o2sKtMpvaBH8qizE7Jxu7cF5PpX1aiaakrbjzzSDbt6ISYos
 PFVUEUsy2hU0UnmkTQpGUOE=
X-Google-Smtp-Source: ABdhPJyzjXZmbGB25Nt6LYzK4/Lb1b18NojM2rGYKC4gJb6rhYHNS5GmPPf2ZZCqPqhuXGeoBdiM6w==
X-Received: by 2002:a05:651c:1a2c:b0:253:d897:ee2f with SMTP id
 by44-20020a05651c1a2c00b00253d897ee2fmr39569928ljb.232.1654171725398; 
 Thu, 02 Jun 2022 05:08:45 -0700 (PDT)
Received: from wse-c0127 ([208.127.141.28]) by smtp.gmail.com with ESMTPSA id
 h9-20020a056512054900b00477c8127e50sm1001299lfl.122.2022.06.02.05.08.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jun 2022 05:08:44 -0700 (PDT)
From: Hans Schultz <schultz.hans@gmail.com>
X-Google-Original-From: Hans Schultz <schultz.hans+netdev@gmail.com>
To: Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <YpiTbOsh0HBMwiTE@shredder>
References: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
 <Yo+LAj1vnjq0p36q@shredder> <86sfov2w8k.fsf@gmail.com>
 <YpCgxtJf9Qe7fTFd@shredder> <86sfoqgi5e.fsf@gmail.com>
 <YpYk4EIeH6sdRl+1@shredder> <86y1yfzap3.fsf@gmail.com>
 <d88b6090-2ac8-0664-0e38-bb2860be7f6e@blackwall.org>
 <86sfonjroi.fsf@gmail.com>
 <3d93d46d-c484-da0a-c12c-80e83eba31c9@blackwall.org>
 <YpiTbOsh0HBMwiTE@shredder>
Date: Thu, 02 Jun 2022 14:08:41 +0200
Message-ID: <86mtevjmie.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Hans Schultz <schultz.hans@gmail.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Vivien Didelot <vivien.didelot@gmail.com>,
 Ido Schimmel <idosch@idosch.org>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

>
> I think Hans is testing with mv88e6xxx which dumps entries directly from
> HW via ndo_fdb_dump(). See dsa_slave_port_fdb_do_dump() which sets
> NTF_SELF.
>
> Hans, are you seeing the entry twice? Once with 'master' and once with
> 'self'?
>

When replacing a locked entry it looks like this:

# bridge fdb show dev eth6 | grep 4c
00:4c:4c:4c:4c:4c vlan 1 master br0 extern_learn offload locked

# bridge fdb replace 00:4c:4c:4c:4c:4c dev eth6 vlan 1 master static ; bridge fdb show dev eth6 | grep 4c
00:4c:4c:4c:4c:4c vlan 1 self static

The problem is then that the function
br_fdb_find_rcu(br,eth_hdr(skb)->h_source, vid);
, where the h_source and vid is the entry above, does not find the entry.
My hypothesis was then that this is because of the 'self' flag that I
see.

I am thinking that the function dsa_slave_port_fdb_do_dump() is only for
debug, and thus does not really set any flags in the bridge modules FDB,
but then I don't understand why the above find function does not find
the entry?
