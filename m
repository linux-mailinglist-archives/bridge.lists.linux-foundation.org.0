Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB481972C
	for <lists.bridge@lfdr.de>; Fri, 10 May 2019 05:35:25 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 07994D8B;
	Fri, 10 May 2019 03:35:11 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9816ED4B
	for <bridge@lists.linux-foundation.org>;
	Fri, 10 May 2019 03:35:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 37BC9709
	for <bridge@lists.linux-foundation.org>;
	Fri, 10 May 2019 03:35:07 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id r10so3599669otd.4
	for <bridge@lists.linux-foundation.org>;
	Thu, 09 May 2019 20:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=XPpYtJgHXSQwbz+WHen0CqKIs5Q0YuIxYrIfRoFSBCA=;
	b=wCHiv/RClUDDN4oNm5RNz+SvY1loFX6IVul0ucFnke/hBZ8Ew0MtC8kstILy3DvV7X
	oUai/lYQ3yb2nqW5fs7t3mKjWf61fIP/mpwdFa4zL+bmzwUi5Ef/PQ6jW4wt+O6kyRXP
	7jbJYi3XVyaojPlSUGU5pnyZ4fiYXG4QNcMSoQaJ7OVsADh2AFBK4Z5kXE1bpjpzEFP9
	EH37gtTqTkaj8JoThRlvY6unglTIBVmYbfINEOhSy+/fXNj+45ZioT5/3z0eEr41WHdK
	65o8TBSV+3Kn/vhwuKtUQdIwiRdVhKHdw8uhXVt0CsyHPK6WxuSpLH73ozIDDLFZZJTP
	v1cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=XPpYtJgHXSQwbz+WHen0CqKIs5Q0YuIxYrIfRoFSBCA=;
	b=sNcOZu/L7xYEge6EMfJEhf0LFFazU8qTW2mfVqBgKArhYQTWKX1zEQObpxfL/ZMRTQ
	smlb0hhzrnnThOFF+PV3SdR5MeqjUqKpkfX3TJtoJv7JFthMN0eRAilCW9AdFpPRevZ+
	Z3Ir2SyqZ7Yi5oZA/M8L+bYh1WvmptGxVIiseWtnQvasV5xs4iUwUUr5i2uniuEiu5dc
	8Z2Qd3ZyEtfbuVdFy/EzV5X+eV76v/mFwfJQi+P6/WE1vPm2HMSSOi7MTc2YU1jf8lWf
	GJZkSLbL6CldsFhZAI0LSenlFUdowm6g83+GCVcLT7xTZtDNl/YfS/8+Ft2BP8tDsHr4
	MOMQ==
X-Gm-Message-State: APjAAAWbczWnKCIT1bHWJHuxc0STpX5hbi41IoVLubH1o3GGGt3eCAWJ
	hqVID5EW5nujhnq6fvcpPePHcw==
X-Google-Smtp-Source: APXvYqy3IwF4pzgdJMDBDlSV2/ISblLb1we2tWFBUVkjeV+1cTVKhZmaYnIZU1ala2Gj+o3kEhOYaQ==
X-Received: by 2002:a05:6830:2003:: with SMTP id
	e3mr5447421otp.142.1557459306213; 
	Thu, 09 May 2019 20:35:06 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
	by smtp.gmail.com with ESMTPSA id
	r65sm1704841oif.47.2019.05.09.20.35.04
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 09 May 2019 20:35:05 -0700 (PDT)
Date: Thu, 9 May 2019 20:35:01 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: "Tobin C. Harding" <tobin@kernel.org>
Message-ID: <20190509203501.310a477c@hermes.lan>
In-Reply-To: <20190510025702.GA10709@eros.localdomain>
References: <20190510025212.10109-1-tobin@kernel.org>
	<20190510025702.GA10709@eros.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Roopa Prabhu <roopa@cumulusnetworks.com>,
	bridge@lists.linux-foundation.org,
	Tyler Hicks <tyhicks@canonical.com>, netdev@vger.kernel.org,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v2] bridge: Fix error path for
	kobject_init_and_add()
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

On Fri, 10 May 2019 12:57:02 +1000
"Tobin C. Harding" <tobin@kernel.org> wrote:

> On Fri, May 10, 2019 at 12:52:12PM +1000, Tobin C. Harding wrote:
> 
> Please ignore - I forgot about netdev procedure and the merge window.
> My bad.
> 
> Will re-send when you are open.
> 
> thanks,
> Tobin.

That only applies to new features,  bug fixes are allowed all the time.
Also please dont send networking stuff to the greater linux-kernel mailing list.
