Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E1D22CD27
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:22:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 528F0894C3;
	Fri, 24 Jul 2020 18:22:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCjqJ9cTscUO; Fri, 24 Jul 2020 18:22:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93A808935A;
	Fri, 24 Jul 2020 18:22:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 63202C004C;
	Fri, 24 Jul 2020 18:22:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5B43FC0733
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 10:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 43BED862A9
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 10:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id khNkbg65iCNz for <bridge@lists.linux-foundation.org>;
 Fri, 17 Jul 2020 10:19:45 +0000 (UTC)
X-Greylist: delayed 01:01:33 by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C14AD86287
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 10:19:44 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id o18so10169163eje.7
 for <bridge@lists.linux-foundation.org>; Fri, 17 Jul 2020 03:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tessares-net.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ABtoKcunWta1zPd9OAU4HivGakSrvH6t7PoGrVg1IHw=;
 b=xR7/TE9+zWjcsvx6d03jd1AgLl1RxCF+57iDGUw8QqO8NNJiU5y/1PDhMHyK6SBPD0
 Tu9kE2ltrVcgIGDsEFYeGOdvGGs9gXhWrY0fvfmRtJuRWzhuLiSsJxij8VwijPfHjTPS
 3aRzO2LOdNynO+M1Cxqg8LEaNT7+cWaMS9ZleuZy42uIKF7zbE+VVsfyNZHqDLg2WCO5
 2IhHaXOEiidwv/4zssU9rGm6ibTKTyOzBFUfh4ZlLc65xFj4ZNu5VWofuJadgyUIYj5C
 Y93p7sEtG5rh/7aWXf9IEREZyDETtvRRffJXB7kNBwNCJiHJc9kale3U3Oqjmxgbkhyq
 rtqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ABtoKcunWta1zPd9OAU4HivGakSrvH6t7PoGrVg1IHw=;
 b=UAvg9KKAMdLJ2i5lxVcMp1lyPrihYATz7U6HjvNSKhpKxEAXUfeR33c4ZTlUCf2cEt
 E4BMrMqlQpUvKprRPhsPT4x0BdDeQUf2QZeQq52g6IyVSQ2TiJ3TiBRXKRVROrLuHEVx
 tHNvifzThfAx3wC/Cd3ZKr0bGpd8V+HjJxN3xVL72aVQYMFbFI6otieGM0xcruLYxkDl
 zCWN6h6OQnNux0phP4SmplUaAkpk307Uzurzys1sJP53Fd85ClKGRNaMYa0aGA8MYN7g
 oqiRX8msVY951caf9n717rzyzNGSk9dhYi8hkBuz5vDu23DiLQ7VqBGhRni7OOKhmmUU
 PQQw==
X-Gm-Message-State: AOAM530v6VpKZpJl6GGqOLKL5w/nimbUqo/anF9XTCtdgFTCuGUiF1Db
 wZfOOq6KwbPTwzdoqZ0Iobs62vXv1gy6FQ==
X-Google-Smtp-Source: ABdhPJwKJni/XUuyRKR8S/sAchcIII3C/3Gdc/GCPUNVX6T8sPkuUFzqwgJFnhzYtCojkw18DlkE7Q==
X-Received: by 2002:a17:907:426c:: with SMTP id
 nx20mr7604495ejb.548.1594977490002; 
 Fri, 17 Jul 2020 02:18:10 -0700 (PDT)
Received: from tsr-lap-08.nix.tessares.net ([81.246.10.41])
 by smtp.gmail.com with ESMTPSA id p4sm7541372eji.123.2020.07.17.02.18.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 17 Jul 2020 02:18:08 -0700 (PDT)
To: Christoph Hellwig <hch@lst.de>, "David S. Miller" <davem@davemloft.net>
References: <20200717062331.691152-1-hch@lst.de>
 <20200717062331.691152-6-hch@lst.de>
From: Matthieu Baerts <matthieu.baerts@tessares.net>
Message-ID: <203f5f41-1de0-575e-864b-53a9412d97f6@tessares.net>
Date: Fri, 17 Jul 2020 11:18:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200717062331.691152-6-hch@lst.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
Cc: linux-arch@vger.kernel.org, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org,
 Alexei Starovoitov <ast@kernel.org>, Jozsef Kadlecsik <kadlec@netfilter.org>,
 linux-bluetooth@vger.kernel.org, linux-sctp@vger.kernel.org,
 netfilter-devel@vger.kernel.org, mptcp@lists.01.org,
 Chas Williams <3chas3@gmail.com>, netdev@vger.kernel.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, bpf@vger.kernel.org,
 linux-can@vger.kernel.org, linux-wpan@vger.kernel.org,
 Pablo Neira Ayuso <pablo@netfilter.org>
Subject: Re: [Bridge] [MPTCP] [PATCH 05/22] net: remove
 compat_sock_common_{get, set}sockopt
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

Hi Christoph,

On 17/07/2020 08:23, Christoph Hellwig wrote:
> Add the compat handling to sock_common_{get,set}sockopt instead,
> keyed of in_compat_syscall().  This allow to remove the now unused
> ->compat_{get,set}sockopt methods from struct proto_ops.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   include/linux/net.h      |  6 ------
>   include/net/sock.h       |  4 ----
>   net/core/sock.c          | 30 ++++++------------------------
>   net/mptcp/protocol.c     |  6 ------

Thank you for looking at that!

For MPTCP-related code:

Acked-by: Matthieu Baerts <matthieu.baerts@tessares.net>

Cheers,
Matt
-- 
Tessares | Belgium | Hybrid Access Solutions
www.tessares.net
