Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9679B484FDE
	for <lists.bridge@lfdr.de>; Wed,  5 Jan 2022 10:16:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 562DC409E3;
	Wed,  5 Jan 2022 09:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CyMlWCmOMNVq; Wed,  5 Jan 2022 09:16:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 97DE9409DE;
	Wed,  5 Jan 2022 09:16:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5AEF0C006E;
	Wed,  5 Jan 2022 09:16:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 11C5DC0012
 for <bridge@lists.linux-foundation.org>; Wed, 29 Dec 2021 14:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F39B380E3B
 for <bridge@lists.linux-foundation.org>; Wed, 29 Dec 2021 14:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nWJm2-EyUJiy for <bridge@lists.linux-foundation.org>;
 Wed, 29 Dec 2021 14:06:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BA7EB80D8C
 for <bridge@lists.linux-foundation.org>; Wed, 29 Dec 2021 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1640786792;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=aO/4Yp6T43XLmNMDQP+OwTqaYv7whlIlyBDq4dbPFsg=;
 b=cIKLPwvkNFjDmUgRNlTNSevOZIBBFlut6kEpMOFbQCxhZU69gSHGNYnoRflhGuMChScNM8
 MLLIYy1Jlu4IaaAOR1/o9cyYzvZDtsUr3P0CyuY6juobcOPXCitDDK0ZZO06bxnwR6prVQ
 6vzpTZjOkHWBIWOV7rNOYbKxvNXjFuU=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-42-LaIBJBNzPKa4C7iVc3ODeA-1; Wed, 29 Dec 2021 09:06:31 -0500
X-MC-Unique: LaIBJBNzPKa4C7iVc3ODeA-1
Received: by mail-qk1-f199.google.com with SMTP id
 u12-20020a05620a0c4c00b00475a9324977so12834680qki.13
 for <bridge@lists.linux-foundation.org>; Wed, 29 Dec 2021 06:06:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aO/4Yp6T43XLmNMDQP+OwTqaYv7whlIlyBDq4dbPFsg=;
 b=7MSdiXRYcKLV6/HdjLy6+CYoQ0kb5Em/MNMoJ1Kw7HNfXzJgE6cUxLQ+3Lcmd2RAQZ
 rAcjYiBRb8qtVtl2hU7oUwXYlMhlzlE0OXXjwDHB3VzZZNOMn00Jo+6FkmnqWK2iNKcy
 k5aZ8Q+bpUSkeWf5sHWpOkUUHTqi0GB/5GxldxLqy75wQo4vmRml5tfNwcU4gn6P7Xjm
 fehZiXOGhDjsWjMCaJx9lhnUFIacCpE7/W+kZcbJUx3nNIn424V5/gLXUvs6eOOpNN24
 SPfrEEkc6CBCbvBV/8jCGjzrGanKl6nGI/sk4A4/uSEL8wb1Qh0hoLJOogxEVZRhfZXp
 8A1Q==
X-Gm-Message-State: AOAM530TZfuhJOaopC3QE4eHEBq63hBfY6+6GLW0FJ7JqH3GnU1O5wj3
 044mV5aSq1DHhWMx22cssHbw9yVxQR2CV0ga5SSkWGKoASFRsyBMKfCaq72Rnq9lQM861thMEjk
 7C6x7TNcxbXMF16YPn/wFFvp+l0NXJ8Q=
X-Received: by 2002:a05:620a:4003:: with SMTP id
 h3mr18549131qko.153.1640786790472; 
 Wed, 29 Dec 2021 06:06:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyimHrQiLRtzxiuwvtJVztliA6HApJnsXsaqWdLb9ltPripN76oNC87N68Zld9IushfHCBQfg==
X-Received: by 2002:a05:620a:4003:: with SMTP id
 h3mr18549076qko.153.1640786790152; 
 Wed, 29 Dec 2021 06:06:30 -0800 (PST)
Received: from steredhat (host-87-10-236-9.retail.telecomitalia.it.
 [87.10.236.9])
 by smtp.gmail.com with ESMTPSA id h2sm18124352qkn.136.2021.12.29.06.06.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Dec 2021 06:06:29 -0800 (PST)
Date: Wed, 29 Dec 2021 15:05:57 +0100
From: Stefano Garzarella <sgarzare@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <20211229140557.cuap5jjqz47yevda@steredhat>
References: <20211229004913.513372-1-kuba@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20211229004913.513372-1-kuba@kernel.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sgarzare@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 05 Jan 2022 09:16:11 +0000
Cc: wintera@linux.ibm.com, andrew@lunn.ch, mustafa.ismail@intel.com,
 pablo@netfilter.org, ast@kernel.org, andrii@kernel.org,
 george.mccollister@gmail.com, anthony.l.nguyen@intel.com, ralf@linux-mips.org,
 linux-hams@vger.kernel.org, hawk@kernel.org, steffen.klassert@secunet.com,
 linux-s390@vger.kernel.org, pkshih@realtek.com, f.fainelli@gmail.com,
 herbert@gondor.apana.org.au, daniel@iogearbox.net,
 linux-bluetooth@vger.kernel.org, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, kadlec@netfilter.org, jgg@ziepe.ca,
 dledford@redhat.com, coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 nikolay@nvidia.com, linux-wireless@vger.kernel.org, habetsm.xilinx@gmail.com,
 yzaikin@google.com, vivien.didelot@gmail.com, wg@grandegger.com,
 ath11k@lists.infradead.org, woojung.huh@microchip.com, johan.hedberg@gmail.com,
 arnd@arndb.de, marcel@holtmann.org, jhs@mojatatu.com,
 linux-can@vger.kernel.org, wenjia@linux.ibm.com,
 Marc Kleine-Budde <mkl@pengutronix.de>, viro@zeniv.linux.org.uk,
 luiz.dentz@gmail.com, jiri@nvidia.com, xiyou.wangcong@gmail.com,
 michael.chan@broadcom.com, virtualization@lists.linux-foundation.org,
 shiraz.saleem@intel.com, trond.myklebust@hammerspace.com, kvalo@codeaurora.org,
 linux-nfs@vger.kernel.org, leon@kernel.org, keescook@chromium.org,
 netdev@vger.kernel.org, dsahern@kernel.org,
 linux-decnet-user@lists.sourceforge.net, fw@strlen.de, tariqt@nvidia.com,
 kgraul@linux.ibm.com, ecree.xilinx@gmail.com, mcgrof@kernel.org,
 netfilter-devel@vger.kernel.org, jreuter@yaina.de,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org, olteanv@gmail.com,
 saeedm@nvidia.com, anna.schumaker@netapp.com, ap420073@gmail.com
Subject: Re: [Bridge] [PATCH bpf-next v2] net: don't include filter.h from
	net/sock.h
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

On Tue, Dec 28, 2021 at 04:49:13PM -0800, Jakub Kicinski wrote:
>sock.h is pretty heavily used (5k objects rebuilt on x86 after
>it's touched). We can drop the include of filter.h from it and
>add a forward declaration of struct sk_filter instead.
>This decreases the number of rebuilt objects when bpf.h
>is touched from ~5k to ~1k.
>
>There's a lot of missing includes this was masking. Primarily
>in networking tho, this time.
>
>Acked-by: Marc Kleine-Budde <mkl@pengutronix.de>
>Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>---
>v2: https://lore.kernel.org/all/20211228192519.386913-1-kuba@kernel.org/
> - fix build in bond on ia64
> - fix build in ip6_fib with randconfig

For AF_VSOCK:
Acked-by: Stefano Garzarella <sgarzare@redhat.com>

