Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C7057766E
	for <lists.bridge@lfdr.de>; Sun, 17 Jul 2022 15:46:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA8A0823F6;
	Sun, 17 Jul 2022 13:46:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CA8A0823F6
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=eRc4tc5J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PL_dfTvQ2srR; Sun, 17 Jul 2022 13:46:20 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 49C9E82470;
	Sun, 17 Jul 2022 13:46:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49C9E82470
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E19BFC0078;
	Sun, 17 Jul 2022 13:46:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C9146C002D
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 13:46:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C34D416E9
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 13:46:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C34D416E9
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=eRc4tc5J
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iviuINdIFFNU for <bridge@lists.linux-foundation.org>;
 Sun, 17 Jul 2022 13:46:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 36839416B9
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 36839416B9
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 13:46:16 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id eq6so12049463edb.6
 for <bridge@lists.linux-foundation.org>; Sun, 17 Jul 2022 06:46:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3snnUZxZCWHMhOcKHlOWclrI7YiFMnqf91pq4umLDns=;
 b=eRc4tc5JtUvdUWPkURoFV8ez0+p3D+QqcBJWlyuztniK9aVQ5p/exfDXy4rZ7kX00B
 OBbIn+33j4UdZ/3Ce0/Zxvyfq8yic3QaCQlbYYwuc8RGTkAYvZ+PAa0vHlvlGwXsBULL
 07tsJIqkMWlgkO4I4C3pNkKYUgvpKS2WmrGBqekKyFh6l+AKIFY0aNgl4Y4cE2gCTInw
 KwAQZ3IH604GUPeVM02HXQFY3c1rCd10i/1BOfrYvy6t/SVAyyuiHddolM1H3Ex2KBRt
 PX6/ThilnY/EBfhO9wPGVEUWRnsHzxe/p/m0QiErcuZaQKUoobeCeIWBNFOZRMTHorH2
 9vtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3snnUZxZCWHMhOcKHlOWclrI7YiFMnqf91pq4umLDns=;
 b=OehBrN3J1gRNH3ihql/09KUFhuXkfS8zxVgL1C0bh7ijWNI8oins9iNV8pX+OU4g+C
 HRudwUtn6KQmtDp3R9lF/MWbeR3p7yNhClYbORc2hKgqlqDOBcZ28QqgqkqCyxWFF3Md
 7j5KAkqvvvOkFe6JTj7GbdqShUdMsvgxTAIVhwuOuJgUO2W4DyHAKsEys0rOp57vQ9zx
 OeV+ufHQqpTYnulqUSmm+iL0INbb1SLyg/uLKZzL9ToGgR5PcUZnIK/d0vIZ96rmtHwd
 C6cy7CMLAkDjtQMHyuCaPmbDUVxJv+2ydnVaNTTVhn3NJH1+81P5ZG8u5BnTgy5qJBjs
 V6Cg==
X-Gm-Message-State: AJIora9DkQAEN1PDMnG8JQsEG5nNFD1nQrmJ1mohwlSTwlUZ2c7Ij6Wh
 2cRzlL5iN2E7fW0VrpVKAIM=
X-Google-Smtp-Source: AGRyM1uxl3lB+c2VdqKlGjDQ+XKGduVZ6JN4M6RmG/QPQEd7S6Dde6PS2FwsH7wUcA4xOS8U8CGhfg==
X-Received: by 2002:a05:6402:c92:b0:43a:7177:5be7 with SMTP id
 cm18-20020a0564020c9200b0043a71775be7mr31827872edb.224.1658065574143; 
 Sun, 17 Jul 2022 06:46:14 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 d27-20020a056402401b00b0043a8f5ad272sm6770681eda.49.2022.07.17.06.46.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Jul 2022 06:46:13 -0700 (PDT)
Date: Sun, 17 Jul 2022 16:46:10 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: Hans S <schultz.hans@gmail.com>
Message-ID: <20220717134610.k3nw6mam256yxj37@skbuf>
References: <20220630111634.610320-1-hans@kapio-technology.com>
 <Yr2LFI1dx6Oc7QBo@shredder>
 <CAKUejP6LTFuw7d_1C18VvxXDuYaboD-PvSkk_ANSFjjfhyDGkg@mail.gmail.com>
 <Yr778K/7L7Wqwws2@shredder>
 <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKUejP5w0Dn8y9gyDryNYy7LOUytqZsG+qqqC8JhRcvyC13=hQ@mail.gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, Hans Schultz <schultz.hans+netdev@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shuah Khan <shuah@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net-next v1 1/1] net: bridge: ensure that
 link-local traffic cannot unlock a locked port
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

Hi Hans,

On Fri, Jul 01, 2022 at 06:07:10PM +0200, Hans S wrote:
> On Fri, Jul 1, 2022 at 3:51 PM Ido Schimmel <idosch@nvidia.com> wrote:
> >
> > On Fri, Jul 01, 2022 at 09:47:24AM +0200, Hans S wrote:
> > > One question though... wouldn't it be an issue that the mentioned
> > > option setting is bridge wide, while the patch applies a per-port
> > > effect?
> >
> > Why would it be an issue? To me, the bigger issue is changing the
> > semantics of "locked" in 5.20 compared to previous kernels.
> >
> > What is even the use case for enabling learning when the port is locked?
> > In current kernels, only SAs from link local traffic will be learned,
> > but with this patch, nothing will be learned. So why enable learning in
> > the first place? As an administrator, I mark a port as "locked" so that
> > only traffic with SAs that I configured will be allowed. Enabling
> > learning when the port is locked seems to defeat the purpose?
> >
> > It would be helpful to explain why mv88e6xxx needs to have learning
> > enabled in the first place. IIUC, the software bridge can function
> > correctly with learning disabled. It might be better to solve this in
> > mv88e6xxx so that user space would not need to enable learning on the SW
> > bridge and then work around issues caused by it such as learning from
> > link local traffic.
> 
> There is several issues when learning is turned off with the mv88e6xxx driver:
> 
> Mac-Auth requires learning turned on, otherwise there will be no miss
> violation interrupts afair.
> Refreshing of ATU entries does not work with learning turn off, as the
> PAV is set to zero when learning is turned off.
> This then further eliminates the use of the HoldAt1 feature and
> age-out interrupts.
> 
> With dynamic ATU entries (an upcoming patch set), an authorized unit
> gets a dynamic ATU entry, and if it goes quiet for 5 minutes, it's
> entry will age out and thus get removed.
> That also solves the port relocation issue as if a device relocates to
> another port it will be able to get access again after 5 minutes.

I think the discussion derailed at this exact point, when you responded
that "Mac-Auth requires learning turned on".

What precise feature do you describe when you say "Mac-Auth"? Do you
mean 802.1X MAC-based authentication in general (where data plane
packets on a locked port are dropped unless their MAC SA is in the FDB,
and populating the FDB is *entirely* up to user space, there aren't any
locked FDB entries on locked ports), or MAC authentication *bypass*
(where the kernel auto-adds locked FDB entries on locked ports)?

I *think* it's just the bypass that requires learning in mv88e6xxx.
But the bypass (the feature where the kernel auto-adds locked FDB
entries on locked ports) doesn't exist in net-next.

Here, what happens is that a locked port learns the MAC SA from the
traffic it didn't drop, i.e. link-local. In other words, the bridge
behaves as expected and instructed: +locked +learning will cause just
that. It's the administrator's fault for not disabling learning.
It's also the mv88e6xxx driver's fault for not validating the "locked" +
"learning" brport flag *combination* until it properly supports "+locked
+learning" (the feature you are currently working on).

I'm still confused why we don't just say that "+locked -learning" means
plain 802.1X, "+locked +learning" means MAB where we learn locked FDB entries.
