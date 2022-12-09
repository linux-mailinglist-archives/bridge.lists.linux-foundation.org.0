Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD8A647EB1
	for <lists.bridge@lfdr.de>; Fri,  9 Dec 2022 08:41:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FB1260B3A;
	Fri,  9 Dec 2022 07:41:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FB1260B3A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=GJC3UEEP
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F9dRUdhsUNab; Fri,  9 Dec 2022 07:41:12 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 374BB60B43;
	Fri,  9 Dec 2022 07:41:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 374BB60B43
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DD1A8C007C;
	Fri,  9 Dec 2022 07:41:10 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 380FDC002D
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:41:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CA4A60B3A
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CA4A60B3A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apnaBrHWzY34 for <bridge@lists.linux-foundation.org>;
 Fri,  9 Dec 2022 07:41:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E55960B16
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4E55960B16
 for <bridge@lists.linux-foundation.org>; Fri,  9 Dec 2022 07:41:09 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 p13-20020a05600c468d00b003cf8859ed1bso2775860wmo.1
 for <bridge@lists.linux-foundation.org>; Thu, 08 Dec 2022 23:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=XjECm/4N2trZe4kiGn1Tlhopv0nTjHCSPh6BnIZekRc=;
 b=GJC3UEEPsBIMK6B7wuyDLiQdilx7IUpryQMKON/j09pU5ACdzMID0Vk7DbFTJHbYJO
 EBv1R3iqekj8rXA5waLmo4XRps+p2jAve1AP5WO7YxekxVmO3HURwiidvHjuzlghYvZ/
 CmwiEUYRADvnBOff5qAbHk+vs30ycr5dNFs2P0KniG/XND06VmEjSG7Puxcrcc78SDX/
 orisiLsTYK+idq6NCPvHmf655nX6b7j8RZHfpdB/fQ/RcGEyT9idbEy8dB6LB2WxvuB+
 2da0NW66tdJlEjGcRk+4hNq6fDm3FFcfdvJIALuua1AtKZBYKmkeJfCxdD6Kn/eJNFxd
 ZLZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=XjECm/4N2trZe4kiGn1Tlhopv0nTjHCSPh6BnIZekRc=;
 b=2gzQhgBC0IiTblfwM6zgH6i6hYwtaf3x56G9CZl0WAyoTM1sInr78v1USjbMV9+PN4
 +B4DOtN2UGJ3dnkmKBkFRQ/95Q8zws1BARycpuCJT0z0HfK5pDfVodCOavvK3PRB7Gmp
 5mz0TORPXWdHOTt1nTi3n4Khan8tycPRZ7h7oal3d701Gswlk1A1FAggouocmUXJ7WjS
 dogl0tCOlCAbD3HNxuidnUcLNWyb5DiShHJ5hxFA15+fXTzPrnyS7LjUvUjcvTsl2YqL
 QI1v78FZVPSxLeidybT1RkWN+KNaSdOzs0Hyh330INV7MN5FizrD6eRgMUC3hNK0abqt
 t5xw==
X-Gm-Message-State: ANoB5plivSBCCOX5zOiW21SU+hCxVb1/5m6p7WzXE/C69EEZwQsX5hsk
 ld9I5A3DqiWYyz0YNdDc4E8xLQ==
X-Google-Smtp-Source: AA0mqf6j0DYVtfB1vsCsCP7gP4JzIXjQ+lJfdXJYe29sHTy5lopwMtJ3+VH1Io9tl4f7T35S0/kyMg==
X-Received: by 2002:a05:600c:4f96:b0:3d1:c895:930c with SMTP id
 n22-20020a05600c4f9600b003d1c895930cmr3838202wmq.35.1670571667415; 
 Thu, 08 Dec 2022 23:41:07 -0800 (PST)
Received: from [192.168.0.161] (79-100-144-200.ip.btc-net.bg. [79.100.144.200])
 by smtp.gmail.com with ESMTPSA id
 j20-20020a05600c191400b003c6f1732f65sm8464582wmq.38.2022.12.08.23.41.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Dec 2022 23:41:06 -0800 (PST)
Message-ID: <22583106-8f39-0c7e-1c61-47ec5c614418@blackwall.org>
Date: Fri, 9 Dec 2022 09:41:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20221208152839.1016350-1-idosch@nvidia.com>
 <20221208152839.1016350-10-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20221208152839.1016350-10-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 09/14] bridge: mcast: Add support for
 (*, G) with a source list and filter mode
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

On 08/12/2022 17:28, Ido Schimmel wrote:
> In preparation for allowing user space to add (*, G) entries with a
> source list and associated filter mode, add the necessary plumbing to
> handle such requests.
> 
> Extend the MDB configuration structure with a currently empty source
> array and filter mode that is currently hard coded to EXCLUDE.
> 
> Add the source entries and the corresponding (S, G) entries before
> making the new (*, G) port group entry visible to the data path.
> 
> Handle the creation of each source entry in a similar fashion to how it
> is created from the data path in response to received Membership
> Reports: Create the source entry, arm the source timer (if needed), add
> a corresponding (S, G) forwarding entry and finally mark the source
> entry as installed (by user space).
> 
> Add the (S, G) entry by populating an MDB configuration structure and
> calling br_mdb_add_group_sg() as if a new entry is created by user
> space, with the sole difference that the 'src_entry' field is set to
> make sure that the group timer of such entries is never armed.
> 
> Note that it is not currently possible to add more than 32 source
> entries to a port group entry. If this proves to be a problem we can
> either increase 'PG_SRC_ENT_LIMIT' or avoid forcing a limit on entries
> created by user space.
> 

That can be tricky wrt EHT. If the limit is increased we have to consider the
complexity and runtime, we might have to optimize it. In practice I think it's
rare to have so many sources, but evpn might change that. :)

> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>     v1:
>     * Use an array instead of a list to store source entries.
> 
>  net/bridge/br_mdb.c     | 128 +++++++++++++++++++++++++++++++++++++++-
>  net/bridge/br_private.h |   7 +++
>  2 files changed, 132 insertions(+), 3 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

