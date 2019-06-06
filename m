Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 00EB737792
	for <lists.bridge@lfdr.de>; Thu,  6 Jun 2019 17:15:02 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id D7A74CCE;
	Thu,  6 Jun 2019 15:14:47 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 50CA99EE
	for <bridge@lists.linux-foundation.org>;
	Thu,  6 Jun 2019 15:14:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DD95B34F
	for <bridge@lists.linux-foundation.org>;
	Thu,  6 Jun 2019 15:14:43 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id a23so1700907pff.4
	for <bridge@lists.linux-foundation.org>;
	Thu, 06 Jun 2019 08:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=TzDoPcS3HLhIwNYev308ripJfQS3Yq68GyHRxr8IupE=;
	b=Z7oQGppdBcUoY2AIRTVVIm6fveADrwDEDjYkeWtG92nm3I34Vf+4rBjD0+tShk2JZY
	zMOuPZQJD4xTG2QlCbolIZagYyyUVzbaUYCILkZhbadB9GaVO1i752zqn/Yhf+G+frL1
	+uI2QigmmrKAyivUqjHkOYwbC2ZyJsQlKcfZzGUP20e4DlqZfc6xvAjuevvKtSlC5g2n
	EfOfV81YjH0QtUEr4mPeR6xxqpD/XVCgAUyorl6cUbbwVjJ2zDalNVvNCUY9//8WYi/5
	5RyIiobxFXceSBlfdzlRPRIyQGO8moX1+WSst6+0T32di8yOUdt23bmvA0Z1GhqrOKVM
	yuzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=TzDoPcS3HLhIwNYev308ripJfQS3Yq68GyHRxr8IupE=;
	b=BidUumD8bS4XrSVyhu0Fdc7+NEO+/74j49Dtla/gyV4Egl88u/cj5M6OkD3xEgR4zu
	6hFayGEJoH0+PzpPXm0lsZH9n4vOsPV68c/aC8AnXqA5nmTGBmrZ4sUekEhZLV+/qi78
	nzvzVD8F1yjJKiTVcNeCbPu/9hgKWpdlYIB3Yc8Y8adSDXQC6+vSgQn71JEObPRVWm3b
	cDz73CDcigJMgzUwZ6NUe3hvWXKtLXA2EbOqAvtnzRQEUw4zfCMxkPXPpmeLcFglf2Yq
	utWfDrqLWxaSQmp0Nbx7OTzPTFO1w+x3jM87w/He8qHUMzJCf38WnHZVME7cLgXipqr4
	Ewmw==
X-Gm-Message-State: APjAAAWH9uN2t2yoEq2os9cGdL+rgs9i+jRwmoU/3jWWlE0D4Z5qhsfq
	YQNTg8YLRFo+Ql1zVoklt2zGKg==
X-Google-Smtp-Source: APXvYqwAU02iZVBjbeWMz80sRLCvX9L3gZbYDIG0gOLE00fiif1RiWci65jT5Rrfdm8RsBWklOKgkA==
X-Received: by 2002:a63:1c59:: with SMTP id c25mr3749595pgm.395.1559834083339; 
	Thu, 06 Jun 2019 08:14:43 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
	by smtp.gmail.com with ESMTPSA id
	e184sm2407652pfa.169.2019.06.06.08.14.42
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 06 Jun 2019 08:14:42 -0700 (PDT)
Date: Thu, 6 Jun 2019 08:14:40 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Christian Brauner <christian@brauner.io>
Message-ID: <20190606081440.61ea1c62@hermes.lan>
In-Reply-To: <20190606114142.15972-2-christian@brauner.io>
References: <20190606114142.15972-1-christian@brauner.io>
	<20190606114142.15972-2-christian@brauner.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ueberall@themenzentrisch.de, vapier@chromium.org, richardrose@google.com,
	bhthompson@google.com, nikolay@cumulusnetworks.com,
	netdev@vger.kernel.org, roopa@cumulusnetworks.com,
	bridge@lists.linux-foundation.org, fw@strlen.de,
	linux-kernel@vger.kernel.org, joelhockey@chromium.org,
	tyhicks@canonical.com, coreteam@netfilter.org,
	netfilter-devel@vger.kernel.org, kadlec@blackhole.kfki.hu,
	smbarber@chromium.org, davem@davemloft.net, pablo@netfilter.org
Subject: Re: [Bridge] [PATCH RESEND net-next 1/2] br_netfilter: add struct
	netns_brnf
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On Thu,  6 Jun 2019 13:41:41 +0200
Christian Brauner <christian@brauner.io> wrote:

> +struct netns_brnf {
> +#ifdef CONFIG_SYSCTL
> +	struct ctl_table_header *ctl_hdr;
> +#endif
> +
> +	/* default value is 1 */
> +	int call_iptables;
> +	int call_ip6tables;
> +	int call_arptables;
> +
> +	/* default value is 0 */
> +	int filter_vlan_tagged;
> +	int filter_pppoe_tagged;
> +	int pass_vlan_indev;
> +};

Do you really need to waste four bytes for each
flag value. If you use a u8 that would work just as well.

Bool would also work but the kernel developers frown on bool
in structures.
